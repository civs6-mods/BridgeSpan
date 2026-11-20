local source=arg[1];
local detailed=arg[2]=="detailed";
Modding={IsModActive=function(id)
    assert(id=="4ecfcc62-5471-4435-b295-590df213e8d8");
    return detailed;
end};
local function icon(typeName)
    return {name="ICON_"..typeName,tooltip=typeName};
end
local function options()
    local districts={icon("DISTRICT_CAMPUS"),icon("DISTRICT_OTHER_MOD")};
    for n=1,3 do
        districts[#districts+1]=icon("DISTRICT_BS_BRIDGE_"..n);
        if n>1 then districts[#districts+1]=icon("DISTRICT_BS_SUPPORT_"..n);end
        for d=0,5 do
            districts[#districts+1]=icon("DISTRICT_BS_BRIDGE_"..n.."_D"..d);
            for segment=2,n do
                districts[#districts+1]=icon("DISTRICT_BS_SUPPORT_"..segment.."_N"..n.."_D"..d);
            end
        end
    end
    assert(#districts==43);
    return {{icon("MAP_PIN_STAR")},districts,{icon("OTHER_MOD"),icon("OTHER_MOD")}};
end
local players={[0]=options(),[1]=options()};
local shown;
include=function(name)
    assert(name==(detailed and "mappinpopup_dmt" or "MapPinPopup"));
    MapTacks={IconOptions=function(id)return players[id] end};
    PopulateIconOptions=function()shown=MapTacks.IconOptions(0) end;
    PopulateIconOptions();
end
dofile(source);
local function check(grid)
    assert(#grid==3 and #grid[2]==4 and #grid[3]==2);
    assert(grid[2][1].tooltip=="DISTRICT_CAMPUS" and grid[2][2].tooltip=="DISTRICT_OTHER_MOD");
    assert(grid[2][3].tooltip=="DISTRICT_BS_BRIDGE_1" and grid[2][4].tooltip=="DISTRICT_BS_BRIDGE_2");
end
check(shown);check(MapTacks.IconOptions(1));check(MapTacks.IconOptions(0));
print("PASS: map pin grid retains two bridge options, other mods and cached player layouts");
