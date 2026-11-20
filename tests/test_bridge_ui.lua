local folder = assert(arg[1]:match("^(.*[/\\])"));
local flavor = arg[2];
local extended = flavor == "extended";
local stockIncludes = {};
function include(name)
    if name == "BS_VisibleBuildings" then dofile(folder .. name .. ".lua");
    else stockIncludes[name] = true; end
end
Modding = {IsModActive = function() return extended; end};
GameConfiguration = {GetValue = function() return extended; end};
Locale = {Lookup = function(key)
    local names = {LOC_DISTRICT_BS_1_NAME = "Stone", LOC_DISTRICT_BS_2_NAME = "Sea"};
    return names[key] or key;
end};
local marker = {BuildingType = "BUILDING_BS_TILE_5_S2", Maintenance = 0};
local library = {BuildingType = "BUILDING_LIBRARY"};
GameInfo = {Buildings = {[11] = marker, [12] = library, [marker.BuildingType] = marker}};

local function freshPlot()
    return {BuildingTypes = {11, 12, 11}, BuildingNames = {"Stone", "Library", "Stone"},
            BuildingsPillaged = {false, true, false}, District = "Sea"};
end
local function checkPlot(data)
    assert(#data.BuildingTypes == 1 and data.BuildingTypes[1] == 12);
    assert(#data.BuildingNames == 1 and data.BuildingNames[1] == "Library");
    assert(#data.BuildingsPillaged == 1 and data.BuildingsPillaged[1]);
end
GetPlotSearchTerms = function(data) checkPlot(data); return data.District; end;
SEARCHCONTEXT_SUGGESTIONS = "suggestions";
local added = {};
local native = {AddData = function(context, id, title, unused, terms)
    local key = context .. "/" .. id;
    added[key] = (added[key] or 0) + 1;
    if context == "map" then assert(terms[1] == "test"); end
end};
Search = native;
local fail = false;
PopulateSuggestionData = function()
    for _, term in ipairs({"Stone", "Sea", "Stone", "Sea", "Campus", "Campus"}) do
        Search.AddData("suggestions", term, term, "");
    end
    Search.AddData("map", "Stone", "", "", {"test"});
    if fail then error("provider failed"); end
end;
dofile(folder .. "MapSearchPanel_BridgeSpan.lua");
for i = 1, 2 do
    added = {};
    PopulateSuggestionData();
    assert(Search == native and added["suggestions/Stone"] == 1 and added["suggestions/Sea"] == 1);
    assert(added["suggestions/Campus"] == 2 and added["map/Stone"] == 1);
end
fail = true;
assert(not pcall(PopulateSuggestionData) and Search == native);
assert(GetPlotSearchTerms(freshPlot()) == "Sea");

FetchAdditionalData = function(plot, data)
    assert(plot == 7);
    for k, v in pairs(freshPlot()) do data[k] = v; end
end;
dofile(folder .. "BS_PlotTooltip.lua");
assert(stockIncludes[extended and "PlotToolTip_Expansion2_BarbarianClansMode" or "PlotToolTip_Expansion2"]);
local tip = {};
FetchAdditionalData(7, tip);
checkPlot(tip);

local component = {Type = marker.BuildingType, Yields = {}};
local real = {Type = library.BuildingType};
local center = {Type = "DISTRICT_CITY_CENTER", Buildings = {real}};
local root = {Type = "DISTRICT_BS_BRIDGE_2_D3", Buildings = {component, real}};
local second = {Type = root.Type, Buildings = {component}};
local support = {Type = "DISTRICT_BS_SUPPORT_2_N2_D3", Buildings = {component}};
local otherMod = {Type = "DISTRICT_OTHER_MOD", Buildings = {real}};
local city = {BuildingsAndDistricts = {center, root, support, second, otherMod}, GoldPerTurn = 7};
local function checkRows(data)
    local rows = data.BuildingsAndDistricts;
    assert(#rows == 4 and rows[1] == center and rows[4] == otherMod);
    assert(rows[2].Type == root.Type and rows[3].Type == root.Type);
    assert(#rows[2].Buildings == 1 and rows[2].Buildings[1] == real and #rows[3].Buildings == 0);
    assert(data.GoldPerTurn == 7 and #city.BuildingsAndDistricts == 5 and #root.Buildings == 2);
end
ViewPanelBreakdown = function(data) checkRows(data); return "rendered"; end;
dofile(folder .. "BS_CityOverview.lua");
assert(stockIncludes[extended and "DL_CityPanelOverview" or "CityPanelOverview_Expansion2"]);
assert(ViewPanelBreakdown(city) == "rendered");
GetCityData = function(id) assert(id == 17); return city; end;
dofile(folder .. "BS_ReportScreen.lua");
assert(stockIncludes[extended and "reportscreen" or "ReportScreen_Expansion2"]);
checkRows(GetCityData(17));
support.AdjacencyBonus = {Science = 2};
local retained = GetCityData(17).BuildingsAndDistricts[3];
assert(retained.Type == support.Type and retained.AdjacencyBonus.Science == 2 and #retained.Buildings == 0);
support.AdjacencyBonus = nil;
component.Yields = {{YieldType = "YIELD_GOLD", YieldChange = -1}};
assert(GetCityData(17) == city);
component.Yields = {};
marker.Maintenance = 1;
assert(GetCityData(17) == city);
marker.Maintenance = 0;
support.Buildings = {real};
assert(GetCityData(17).BuildingsAndDistricts[3] == support);
local ordinary = {BuildingsAndDistricts = {center, otherMod}};
assert(BS_VisibleCityData(ordinary, false) == ordinary);
print("PASS: bridge search, tooltip, city overview and income/expense report (" .. flavor .. ")");
