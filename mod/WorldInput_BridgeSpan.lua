if Modding.IsModActive("521b8777-0977-4859-a5ee-3e411a732e5c") then
    include("HD_WorldInput");
else
    include("WorldInput_Expansion2");
end
include("BridgeSpan_DistrictCommon");
local B=BridgeSpanDistrict;
local baseConfirm=ConfirmPlaceDistrict;
local baseArt=RealizePlotArtForDistrictPlacement;
local baseHover=RealizeCurrentPlaceDistrictOrWonderPlot;
local layer=UILens.CreateLensLayerHash("Districts");
local previous={};
local placements={};
local preview;
local placementOwner,placementCityID,placementSpan,hoveredPlot;
local painted={};
local function preferredPlan(a,b)
    -- Stable option order: nearest banks first, then a
    -- canonical bank-pair order so reverse enumeration does not flip a bridge.
    if a.Span~=b.Span then return a.Span<b.Span;end
    local aFirst,bFirst=math.min(a.Start,a.Finish),math.min(b.Start,b.Finish);
    if aFirst~=bFirst then return aFirst<bFirst;end
    return math.max(a.Start,a.Finish)<math.max(b.Start,b.Finish);
end
local function selection()
    local hash=UI.GetInterfaceModeParameter(CityOperationTypes.PARAM_DISTRICT_TYPE);
    local span,direction=B.Length(hash);
    if not direction then return UI.GetHeadSelectedCity(),span; end
end
local function highlight(choices)
    local wanted,ordered={},{};
    for _,span in ipairs(choices or {}) do
        for _,index in ipairs(span.Plots) do
            if not wanted[index] then wanted[index]=true;ordered[#ordered+1]=index;end
        end
    end
    local focused={};
    for _,index in ipairs(previous) do
        if not wanted[index] then UILens.UnFocusHex(layer,index,"Placement_Valid");end
        focused[index]=true;
    end
    for _,index in ipairs(ordered) do
        if not painted[index] then
            UILens.SetAdjacencyBonusDistict(index,"Placement_Valid",{});painted[index]=true;
        end
        if not focused[index] then UILens.FocusHex(layer,index,"Placement_Valid");end
    end
    previous=ordered;
end
function RealizePlotArtForDistrictPlacement()
    local city,n=selection();if not n or not city then return baseArt();end
    if preview then return;end
    UILens.SetActive("DistrictPlacement");UIManager:SetUICursor(CursorTypes.RANGE_ATTACK);
    UILens.ClearLayerHexes(layer);
    placements={};previous={};painted={};hoveredPlot=nil;
    placementOwner=city:GetOwner();placementCityID=city:GetID();placementSpan=n;
    local visible,seen={},{};
    local function reveal(index)
        if seen[index] then return; end
        seen[index]=true;
        visible[#visible+1]=index;
    end
    for _,length in ipairs(n==1 and {1} or {3,2}) do
        B.VisitPlacements(city,length,function(index,choices)
            local options=placements[index] or {};
            for _,span in ipairs(choices) do
                options[#options+1]=span;
            end
            placements[index]=options;
            -- As in stock district placement, show clickable water anchors.
            -- Do not combine every possible bridge and its land banks.
            if #options>0 and not painted[index] then
                reveal(index);
                UILens.SetAdjacencyBonusDistict(index,"Placement_Valid",{});painted[index]=true;
            end
        end);
    end
    for _,options in pairs(placements) do table.sort(options,preferredPlan);end
    LuaEvents.StrategicView_MapPlacement_AddDistrictPlacementShadowHexes(visible);
end
function RealizeCurrentPlaceDistrictOrWonderPlot()
    local city,n=selection();
    if UI.GetInterfaceMode()~=InterfaceModeTypes.DISTRICT_PLACEMENT or not n then return baseHover();end
    if preview then return; end
    if not city then highlight(nil);return;end
    if city:GetOwner()~=placementOwner or city:GetID()~=placementCityID or n~=placementSpan then RealizePlotArtForDistrictPlacement();end
    local index=UI.GetCursorPlotID();
    -- Mouse movement inside a hex must not restart the lens animation.
    if index==hoveredPlot then return;end
    hoveredPlot=index;
    highlight(placements[index] and {{Plots={index}}} or nil);
end

local function OnPlacementModeChanged(oldMode,newMode)
    if oldMode==InterfaceModeTypes.DISTRICT_PLACEMENT and newMode~=oldMode then
        LuaEvents.BridgeSpan_HidePlacementPicker();
        highlight(nil);
        previous={};
        placements={};
        preview=nil;
        placementOwner=nil;placementCityID=nil;placementSpan=nil;hoveredPlot=nil;painted={};
    end
end
Events.InterfaceModeChanged.Add(OnPlacementModeChanged);
local function parameters(span)
    local anchor=Map.GetPlotByIndex(span.Anchor);
    local p={[CityOperationTypes.PARAM_X]=anchor:GetX(),[CityOperationTypes.PARAM_Y]=anchor:GetY(),
        [CityOperationTypes.PARAM_DISTRICT_TYPE]=B.PlacementDistrict(span).Hash};
    SetInsertModeParams(p);
    return p;
end
local clearPreview;
local function begin(city,span)
    preview=nil;
    local anchor=Map.GetPlotByIndex(span.Anchor);
    local current=B.Find(city,anchor,span.Span,span.Direction,false);
    if not current or not B.SameClearance(span,current) then clearPreview();return;end
    local p=parameters(span);
    if not CityManager.CanStartOperation(city,CityOperationTypes.BUILD,p,true) then clearPreview();return;end
    -- The chosen district type already identifies the exact span and direction.
    CityManager.RequestOperation(city,CityOperationTypes.BUILD,p);
    highlight(nil);ExitPlacementMode();
end
clearPreview=function()
    preview=nil;
    LuaEvents.BridgeSpan_HidePlacementPicker();
    if UI.GetInterfaceMode()==InterfaceModeTypes.DISTRICT_PLACEMENT then
        RealizePlotArtForDistrictPlacement();
        RealizeCurrentPlaceDistrictOrWonderPlot();
    else highlight(nil);end
end
local function showPreview(span)
    preview={span};
    highlight(preview);
    LuaEvents.StrategicView_MapPlacement_AddDistrictPlacementShadowHexes(span.Plots);
    LuaEvents.BridgeSpan_ShowPlacementBanks(span);
end
local function resetPreview()
    UILens.ClearLayerHexes(layer);
    previous={};painted={};
end
local function confirm(city,span)
    resetPreview();showPreview(span);
    local district=B.PlacementDistrict(span);
    local cost=city:GetBuildQueue():GetDistrictCost(district.Index);
    local popup=PopupDialogInGame:new("BridgeSpanConfirm");
    popup:AddTitle(Locale.Lookup(district.Name));
    local text=Locale.Lookup("LOC_BS_PLACEMENT_COST",span.Span,cost);
    local allowed,result=CityManager.CanStartOperation(city,CityOperationTypes.BUILD,parameters(span),true);
    if not allowed then clearPreview();return;end
    -- Use the stock build-operation warnings for the anchor tile.
    for _,message in ipairs(result and result[CityOperationResults.SUCCESS_CONDITIONS] or {})do
        text=text.."[NEWLINE]"..Locale.Lookup(message);
    end
    -- Support tiles are attached later, so include their clearance explicitly.
    for segment=2,span.Span do
        local row=span.Clearance[tostring(span.Plots[segment])];
        for _,kind in ipairs({"Feature","Improvement"})do
            local id=row[kind];local info=(kind=="Feature" and GameInfo.Features or GameInfo.Improvements)[id];
            if id~=-1 and info then text=text.."[NEWLINE]"..Locale.Lookup("LOC_BS_PLACEMENT_REMOVES",segment,Locale.Lookup(info.Name));end
        end
    end
    popup:AddText(text);
    popup:AddConfirmButton(Locale.Lookup("LOC_YES"),function()begin(city,span);end);
    popup:AddCancelButton(Locale.Lookup("LOC_NO"),clearPreview);
    popup:Open();
end
function ConfirmPlaceDistrict(input)
    local currency=UI.GetInterfaceModeParameter(CityCommandTypes.PARAM_YIELD_TYPE);
    if currency==YieldTypes.GOLD or currency==YieldTypes.FAITH then
        local hash=UI.GetInterfaceModeParameter(CityOperationTypes.PARAM_DISTRICT_TYPE);
        if B.IsBridgeDistrict(GameInfo.Districts[hash]) then
            ExitPlacementMode(true);
            return;
        end
        return baseConfirm(input);
    end
    local city,n=selection();if not n or not city then return baseConfirm(input);end
    if preview then return;end
    RealizePlotArtForDistrictPlacement();
    local choices={};
    for _,span in ipairs(placements[UI.GetCursorPlotID()] or {}) do
        if CityManager.CanStartOperation(city,CityOperationTypes.BUILD,parameters(span),true) then
            choices[#choices+1]=span;
        end
    end
    if #choices==1 then confirm(city,choices[1]);return;end
    if #choices>1 then
        resetPreview();preview={choices[1]};
        LuaEvents.BridgeSpan_OpenPlacementPicker(choices,showPreview,function(span)confirm(city,span)end,clearPreview);
        return;
    end
    UI.PlaySound("Play_UI_Error");
end
print("[BridgeSpanDistrict] Stable water-only placement loaded");
