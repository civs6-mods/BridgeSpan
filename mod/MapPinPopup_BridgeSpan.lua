if Modding.IsModActive("4ecfcc62-5471-4435-b295-590df213e8d8") then
    include("mappinpopup_dmt");
else
    include("MapPinPopup");
end

local baseIconOptions=MapTacks.IconOptions;
function MapTacks.IconOptions(playerID)
    local grid=baseIconOptions(playerID);
    for section=#grid,1,-1 do
        local icons=grid[section];
        for index=#icons,1,-1 do
            local name=icons[index].name;
            if name and name:match("^ICON_DISTRICT_BS_") and name~="ICON_DISTRICT_BS_BRIDGE_1"
                and name~="ICON_DISTRICT_BS_BRIDGE_2" then
                table.remove(icons,index);
            end
        end
        if #icons==0 then table.remove(grid,section);end
    end
    return grid;
end

-- The upstream popup already populated its controls while being included.
PopulateIconOptions();
