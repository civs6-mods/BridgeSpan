"""Placement/production regression: Steel is not an ancestor of Shipbuilding.

The archived placement fixture supplies geometry; these cases vary techs
independently, including an old incomplete bridge without Shipbuilding.
"""
from pathlib import Path
import subprocess
(Path(__file__).resolve().parent/"build").mkdir(exist_ok=True)

root = Path(__file__).resolve().parent
repo = root.parent
fixture = (root / 'fixtures/placement.lua').read_text(encoding='utf-8')
fixture = fixture.replace('Technologies={BRIDGE_TECH={Index=1}}',
                          'Technologies={BRIDGE_TECH={Index=1},TECH_SHIPBUILDING={Index=2}}')
fixture = fixture.replace('"LoadGameViewStateDone","DistrictPillaged"',
                          '"LoadGameViewStateDone","CityTransfered","DistrictPillaged"')
fixture += r'''
for n=1,3 do
    local anchor=setup(n,1);
    local techs=Players[0].GetTechs;
    Players[0].GetTechs=function() return {HasTech=function(_,id) return id~=2 end}; end;
    assert(not B.HasEmbarkTechnology(0));
    assert(not B.Find(city,anchor,n,1,false),"new bridge allowed before Shipbuilding");
    assert(not B.VisitPlacements(city,n),"production found unavailable bridge site");
    anchor.district=GameInfo.Districts["DISTRICT_BS_BRIDGE_"..n.."_D1"].Index;
    assert(B.Find(city,anchor,n,1,true),"old work site cannot be recovered");
    Players[0].GetTechs=techs;
    anchor.district=-1;
    assert(B.HasEmbarkTechnology(0));
    assert(B.Find(city,anchor,n,1,false),"Shipbuilding did not restore placement");
end
print("PASS: independent Shipbuilding gating for 1/2/3 spans and old work-site compatibility");

-- Exercise the production adapter with actual common placement rules.
local anchor=setup(3,1);
local techs=Players[0].GetTechs;
Players[0].GetTechs=function() return {HasTech=function(_,id) return id~=2 end}; end;
city.GetBuildQueue=function() return {HasBeenPlaced=function() return false end} end;
local function item(n,repair) return {Type="DISTRICT_BS_BRIDGE_"..n,Hash=n,Disabled=false,Repair=repair,ToolTip="original"} end;
Modding={IsModActive=function() return false end};
GameConfiguration.GetValue=function() return false end;
Locale={Lookup=function(key) return key end};
local baseItems={item(1),item(2),item(3)};
GetData=function() return {City=city,DistrictItems=baseItems} end;
include("ProductionPanel_BridgeSpan");
local data=GetData();
assert(#data.DistrictItems==2,"sea entries no longer grouped");
for _,it in ipairs(data.DistrictItems) do
    assert(it.Disabled and it.ToolTip:find("LOC_BS_REQUIRES_SHIPBUILDING",1,true));
    assert(not it.ToolTip:find("LOC_BS_NO_BRIDGE_SITE",1,true),"wrong disabled reason");
end
Players[0].GetTechs=techs;
print("PASS: grouped production entries explain the missing technology");
-- Whole-bridge projects replace per-segment district repair entries.
local function districtItem(name,repair)
    return {Type=name,Hash=99,Disabled=false,Repair=repair,ToolTip="original"};
end;
baseItems={districtItem("DISTRICT_BS_SUPPORT_2",false),districtItem("DISTRICT_BS_SUPPORT_3",false),
    districtItem("DISTRICT_BS_SUPPORT_2",true),districtItem("DISTRICT_BS_SUPPORT_3",true),
    item(2,true),item(3,true)};
data=GetData();assert(#data.DistrictItems==0,"per-segment repair or support construction exposed");
print("PASS: bridge/support district repair rows replaced by whole-bridge projects");
'''
out = root / 'build/unlock-acceptance.lua'
out.write_text(fixture, encoding='utf-8')
result = subprocess.run(['node', str(repo/'node_modules/fengari-node-cli/src/lua-cli.js'),
                         str(out), str(repo / 'mod')],
                        check=True, capture_output=True, text=True, encoding='utf-8')
print(result.stdout, end='')
print(result.stderr, end='')
assert 'PASS: grouped production entries explain the missing technology' in result.stdout
assert not result.stderr, 'Lua runtime reported an error'
