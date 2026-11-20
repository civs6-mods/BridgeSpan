if Modding.IsModActive("521b8777-0977-4859-a5ee-3e411a732e5c") then
    include("DL_CityPanelOverview");
else
    include("CityPanelOverview_Expansion2");
end
include("BS_VisibleBuildings");
local baseBreakdown = ViewPanelBreakdown;
function ViewPanelBreakdown(data)
    return baseBreakdown(BS_VisibleCityData(data, false));
end
