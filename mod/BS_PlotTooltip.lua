if GameConfiguration.GetValue("GAMEMODE_BARBARIAN_CLANS") then
    include("PlotToolTip_Expansion2_BarbarianClansMode");
else
    include("PlotToolTip_Expansion2");
end
include("BS_VisibleBuildings");
local baseAdditional=FetchAdditionalData;
function FetchAdditionalData(plot,data)
    baseAdditional(plot,data);
    BS_RemoveCrossingMarkers(data);
end
