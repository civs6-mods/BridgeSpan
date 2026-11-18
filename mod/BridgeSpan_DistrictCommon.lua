BridgeSpanDistrict = {};
local B=BridgeSpanDistrict;
B.Key="BS_DistrictBridges_v2";
B.LegacyKey="BS_DistrictBridge_v1";
B.LegacyPendingKey="BS_DistrictBridgePlan_v1";
function B.PendingKey(anchor)
    return "BS_DistrictBridgePlan_v2:"..anchor;
end
function B.Length(districtType)
    local row=GameInfo.Districts[districtType];
    if not row then return; end
    local span,direction=row.DistrictType:match("^DISTRICT_BS_BRIDGE_([123])_D([0-5])$");
    if span then return tonumber(span),tonumber(direction); end
    return tonumber(row.DistrictType:match("^DISTRICT_BS_BRIDGE_([123])$"));
end
function B.PlacementDistrict(plan)
    return GameInfo.Districts["DISTRICT_BS_BRIDGE_"..plan.Span.."_D"..plan.Direction];
end
function B.Marker(plan, segment, slot)
    return "BUILDING_BS_TILE_"..segment.."_S"..slot;
end
function B.SupportName(span, direction, segment)
    return "DISTRICT_BS_SUPPORT_"..segment.."_N"..span.."_D"..direction;
end
function B.District(plan, segment)
    local name;
    if segment==1 then name=plan.Root or "DISTRICT_BS_BRIDGE_"..plan.Span;
    elseif plan.TileArt then name=B.SupportName(plan.Span,plan.Direction,segment);
    else name="DISTRICT_BS_SUPPORT_"..segment; end
    return GameInfo.Districts[name];
end
function B.BelongsToCity(plot, city)
    local purchaseCity=plot and Cities.GetPlotPurchaseCity(plot);
    return purchaseCity and purchaseCity:GetID()==city:GetID()
        and purchaseCity:GetOwner()==city:GetOwner();
end
function B.Records(city)
    local records=city:GetProperty(B.Key);
    if records then return records; end
    records={};
    local legacy=city:GetProperty(B.LegacyKey);
    if legacy then
        legacy.Slot=1;
        records[tostring(legacy.Anchor)]=legacy;
    end
    return records;
end
local function bank(plot)
    if not plot or plot:IsWater() or plot:IsMountain()
        or plot:GetDistrictType()==GameInfo.Districts.DISTRICT_CANAL.Index then return false; end
    if plot:IsCity() then
        local city=Cities.GetPlotPurchaseCity(plot);
        -- City Canal Rework uses this property to enable its canal appearance.
        return city and not city:GetProperty("NAVIGABLE");
    end
    return true;
end
local function hasBridgeheadCliff(land,water,direction)
    -- The map generator stores each land-to-water edge on one of its two plots.
    local D=DirectionTypes;
    if direction==D.DIRECTION_NORTHEAST then return water:IsNEOfCliff(); end
    if direction==D.DIRECTION_EAST then return land:IsWOfCliff(); end
    if direction==D.DIRECTION_SOUTHEAST then return land:IsNWOfCliff(); end
    if direction==D.DIRECTION_SOUTHWEST then return land:IsNEOfCliff(); end
    if direction==D.DIRECTION_WEST then return water:IsWOfCliff(); end
    return water:IsNWOfCliff();
end
function B.HasEmbarkTechnology(owner)
    -- Native bridge traversal still requires the player's embark capability.
    local tech=GameInfo.Technologies.TECH_SHIPBUILDING;
    return tech~=nil and Players[owner]:GetTechs():HasTech(tech.Index);
end
local function hasBridgeTechnology(owner,span)
    -- Only the two player-facing entries appear in the technology UI.
    local district=GameInfo.Districts[span==1 and "DISTRICT_BS_BRIDGE_1" or "DISTRICT_BS_BRIDGE_2"];
    local tech=district.PrereqTech and GameInfo.Technologies[district.PrereqTech];
    return not tech or Players[owner]:GetTechs():HasTech(tech.Index);
end
function B.CanClearPlot(city,plot,district)
    local feature=plot:GetFeatureType();local improvement=plot:GetImprovementType();
    if feature~=-1 then
        local row=GameInfo.Features and GameInfo.Features[feature];
        if not row or not row.Removable or row.NaturalWonder then return false;end
        local tech=row.RemoveTech and GameInfo.Technologies[row.RemoveTech];
        if tech and not Players[city:GetOwner()]:GetTechs():HasTech(tech.Index) then return false;end
    end
    if improvement~=-1 then
        local row=GameInfo.Improvements and GameInfo.Improvements[improvement];
        if not row or not row.Removable then return false;end
    end
    if feature~=-1 or improvement~=-1 then
        return plot:CanHaveDistrict(district.Index,city:GetOwner(),city:GetID());
    end
    return true;
end
function B.SameClearance(a,b)
    for _,index in ipairs(a.Plots)do
        local first=a.Clearance and a.Clearance[tostring(index)];
        local second=b.Clearance and b.Clearance[tostring(index)];
        if not first or not second or first.Feature~=second.Feature or first.Improvement~=second.Improvement then return false;end
    end
    return true;
end
function B.Find(city,anchor,n,d,allowRoot)
    if not city or not anchor or not n or n<1 or n>3 or not d or d%1~=0 or d<0 or d>5 then return; end
    local owner=city:GetOwner();
    if not hasBridgeTechnology(owner,n) then return; end
    -- Existing work sites are recovered separately; only gate new starts.
    if not allowRoot and not B.HasEmbarkTechnology(owner) then return; end
    local start=Map.GetAdjacentPlot(anchor:GetX(),anchor:GetY(),(d+3)%6);
    if not bank(start) then return; end
    local reserved={};
    for _,plan in pairs(B.Records(city)) do
        if plan.Anchor~=anchor:GetIndex() then
            for _,index in ipairs(plan.Plots) do reserved[index]=true; end
        end
    end
    local plots,clearance={},{};local seen={[start:GetIndex()]=true};local plot=anchor;
    local root;
    for i=1,n do
        if not plot or seen[plot:GetIndex()] or reserved[plot:GetIndex()] or not plot:IsWater()
            or plot:GetTerrainType()~=GameInfo.Terrains.TERRAIN_COAST.Index
            or plot:GetOwner()~=owner or plot:GetResourceType()~=-1 then return; end
        if not B.BelongsToCity(plot,city) then return; end
        local district=plot:GetDistrictType();
        if district~=-1 then
            if i~=1 or not allowRoot then return; end
            local span,direction=B.Length(district);
            if span~=n or (direction and direction~=d) then return; end
            if direction then root=GameInfo.Districts[district].DistrictType; end
        else
            local row=GameInfo.Districts[i==1 and ("DISTRICT_BS_BRIDGE_"..n.."_D"..d) or B.SupportName(n,d,i)];
            if not B.CanClearPlot(city,plot,row) then return;end
        end
        clearance[tostring(plot:GetIndex())]={Feature=plot:GetFeatureType(),Improvement=plot:GetImprovementType()};
        plots[i]=plot:GetIndex();seen[plot:GetIndex()]=true;
        plot=Map.GetAdjacentPlot(plot:GetX(),plot:GetY(),d);
    end
    if not bank(plot) or seen[plot:GetIndex()] then return; end
    if hasBridgeheadCliff(start,anchor,d)
        or hasBridgeheadCliff(plot,Map.GetPlotByIndex(plots[n]),(d+3)%6) then return; end
    return {Owner=owner,CityID=city:GetID(),Anchor=anchor:GetIndex(),Span=n,Direction=d,Plots=plots,
        Start=start:GetIndex(),Finish=plot:GetIndex(),Root=root,Clearance=clearance,TileArt=root~=nil};
end
function B.Options(city,anchor,n,allowRoot)
    local result,seen={},{};
    for direction=0,5 do
        local span=B.Find(city,anchor,n,direction,allowRoot);
        if span then
            -- A one-tile crossing can be described from either bank.
            local axis=math.min(span.Start,span.Finish)..":"..math.max(span.Start,span.Finish);
            if not seen[axis] then
                result[#result+1]=span;
                seen[axis]=true;
            end
        end
    end
    return result;
end

-- Both production availability and the placement lens start from the same
-- native targets, then apply the rules for the entire bridge.
function B.VisitPlacements(city, n, visit)
    local district=GameInfo.Districts["DISTRICT_BS_BRIDGE_"..n];
    local params={[CityOperationTypes.PARAM_DISTRICT_TYPE]=district.Hash};
    local targets=CityManager.GetOperationTargets(city,CityOperationTypes.BUILD,params);
    local found=false;
    for _,index in ipairs(targets and targets[CityOperationResults.PLOTS] or {}) do
        local choices=B.Options(city,Map.GetPlotByIndex(index),n,false);
        if #choices>0 then
            if not visit then return true; end
            visit(index,choices);
            found=true;
        end
    end
    return found;
end
