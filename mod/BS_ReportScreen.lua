if Modding.IsModActive("6f2888d4-79dc-415f-a8ff-f9d81d7afb53") then
    include("reportscreen");
else
    include("ReportScreen_Expansion2");
end
include("BS_VisibleBuildings");

local baseGetCityData = GetCityData;
function GetCityData(...)
    return BS_VisibleCityData(baseGetCityData(...), true);
end
