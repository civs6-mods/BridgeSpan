-- Keep the native build types and their separate costs, but group new starts.
if Modding.IsModActive("521b8777-0977-4859-a5ee-3e411a732e5c") then
    include("DL_ProductionPanel");
elseif GameConfiguration.GetValue("GAMEMODE_HEROES") then
    include("ProductionPanel_Babylon_Heroes");
end
if not GetData then include("ProductionPanel"); end
include("BridgeSpan_DistrictCommon");

local baseGetData=GetData;
local B=BridgeSpanDistrict;
local function isSeaBridge(item)
    return not item.Repair and (item.Type=="DISTRICT_BS_BRIDGE_2" or item.Type=="DISTRICT_BS_BRIDGE_3");
end

function GetData()
    local data=baseGetData();
    if not data then return nil; end
    local first, chosen;
    local queue=data.City:GetBuildQueue();
    local visible={};
    for _,item in ipairs(data.DistrictItems) do
        local _,direction=B.Length(item.Type);
        local support=item.Type=="DISTRICT_BS_SUPPORT_2" or item.Type=="DISTRICT_BS_SUPPORT_3";
        if support and item.Repair then
            visible[#visible+1]=item;
        elseif not support and (not direction or item.Repair or queue:HasBeenPlaced(item.Hash)) then
            visible[#visible+1]=item;
        end
    end
    data.DistrictItems=visible;
    local function priority(item)
        if not item.Disabled and (item.Repair or queue:HasBeenPlaced(item.Hash)) then return 2; end
        return item.Disabled and 0 or 1;
    end
    for index,item in ipairs(data.DistrictItems) do
        local span,direction=B.Length(item.Type);
        if span and not direction and priority(item)==1 then
            local reason;
            if not B.HasEmbarkTechnology(data.City:GetOwner()) then
                reason="LOC_BS_REQUIRES_SHIPBUILDING";
            elseif not B.VisitPlacements(data.City,span) then
                reason="LOC_BS_NO_BRIDGE_SITE";
            end
            if reason then
                item.Disabled=true;
                item.ToolTip=item.ToolTip.."[NEWLINE][NEWLINE]"..Locale.Lookup(reason);
            end
        end
        if isSeaBridge(item) then
            first=first or index;
            if not chosen or priority(item)>priority(chosen) then chosen=item; end
        end
    end
    if first then
        local items={};
        for index,item in ipairs(data.DistrictItems) do
            if index==first then
                items[#items+1]=chosen;
            elseif not isSeaBridge(item) then
                items[#items+1]=item;
            end
        end
        if priority(chosen)==1 then
            chosen.ToolTip=Locale.Lookup("LOC_DISTRICT_BS_SEA_DESCRIPTION");
        end
        data.DistrictItems=items;
    end
    return data;
end
