function BS_IsCrossingMarker(buildingType)
    return buildingType and buildingType:match("^BUILDING_BS_TILE_%d+_S%d+$")~=nil;
end

-- Both panels construct fresh parallel arrays for each inspected plot.
function BS_RemoveCrossingMarkers(data)
    local types=data.BuildingTypes;
    if not types then return;end
    for i=#types,1,-1 do
        local row=GameInfo.Buildings[types[i]];
        if row and BS_IsCrossingMarker(row.BuildingType) then
            table.remove(types,i);
            table.remove(data.BuildingNames,i);
            table.remove(data.BuildingsPillaged,i);
        end
    end
end

local function copyWith(source, key, value)
    local copy = {};
    for k, v in pairs(source) do copy[k] = v; end
    copy[key] = value;
    return copy;
end

local yieldFields = {"Culture", "Faith", "Food", "Gold", "Production", "Science", "Tourism", "Maintenance"};
local function districtHasIncomeOrCost(district)
    for _, field in ipairs(yieldFields) do
        if (district[field] or 0) ~= 0 then return true; end
    end
    for _, bonus in pairs(district.AdjacencyBonus or {}) do
        if bonus ~= 0 then return true; end
    end
    return false;
end

local function markerHasIncomeOrCost(building)
    local row = GameInfo.Buildings[building.Type];
    return (row and (row.Maintenance or 0) ~= 0) or next(building.Yields or {}) ~= nil;
end

-- CitySupport also feeds gameplay-oriented consumers. Filter just the view
-- requested by the panel, retaining one root row per physical bridge.
function BS_VisibleCityData(data, financial)
    local rows = data.BuildingsAndDistricts;
    local visible;
    for index, district in ipairs(rows) do
        local kind = district.Type or "";
        local support = kind:match("^DISTRICT_BS_SUPPORT_");
        if support or kind:match("^DISTRICT_BS_BRIDGE_") then
            local buildings = {};
            for _, building in ipairs(district.Buildings) do
                if not BS_IsCrossingMarker(building.Type) or (financial and markerHasIncomeOrCost(building)) then
                    buildings[#buildings + 1] = building;
                end
            end
            local keep = not support or #buildings > 0 or (financial and districtHasIncomeOrCost(district));
            if not keep or #buildings ~= #district.Buildings then
                if not visible then
                    visible = {};
                    for i = 1, index - 1 do visible[i] = rows[i]; end
                end
                district = keep and copyWith(district, "Buildings", buildings) or nil;
            end
        end
        if visible and district then visible[#visible + 1] = district; end
    end
    if visible then return copyWith(data, "BuildingsAndDistricts", visible); end
    return data;
end
