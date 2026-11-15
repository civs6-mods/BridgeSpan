"""Exercise confirmed clearance, including every support tile, without a game save."""
from pathlib import Path
import subprocess
(Path(__file__).resolve().parent/"build").mkdir(exist_ok=True)
root=Path(__file__).resolve().parent;repo=root.parent
fixture=(root/'fixtures/placement.lua').read_text(encoding='utf-8')
fixture=fixture.replace('Technologies={BRIDGE_TECH={Index=1}}','Technologies={BRIDGE_TECH={Index=1},TECH_SHIPBUILDING={Index=2}}')
fixture=fixture.replace('"CityRemovedFromMap","PlayerTurnActivated"','"CityRemovedFromMap","CityTransfered","PlayerTurnActivated"')
fixture+=r'''
GameInfo.Features={[2]={Removable=true,RemoveTech="TECH_REMOVE"},[3]={Removable=false},[4]={Removable=true,NaturalWonder=true}};
GameInfo.Improvements={[2]={Removable=true},[3]={Removable=false}};
GameInfo.Technologies.TECH_REMOVE={Index=3};
local cleared=0;
TerrainBuilder={SetFeatureType=function(p,id) assert(id==-1);p.feature=id;cleared=cleared+1 end};
ImprovementBuilder={SetImprovementType=function(p,id,owner) assert(id==-1 and owner==0);p.improvement=id;cleared=cleared+1 end};
for n=1,3 do
 local anchor=setup(n,1);
 for i=0,n-1 do
  local p=Map.GetPlot(i,0);p.feature=2;p.improvement=2;
  p.CanHaveDistrict=function()return true end;
 end
 local plan=assert(B.Find(city,anchor,n,1,false),"removable bridge footprint rejected");
 assert(B.SameClearance(plan,assert(B.Find(city,anchor,n,1,false))));
 for i=0,n-1 do
  local p=Map.GetPlot(i,0);
  p.feature=3;assert(not B.Find(city,anchor,n,1,false),"nonremovable feature accepted");
  p.feature=4;assert(not B.Find(city,anchor,n,1,false),"wonder accepted");p.feature=2;
  p.improvement=3;assert(not B.Find(city,anchor,n,1,false),"permanent improvement accepted");p.improvement=2;
  p.CanHaveDistrict=function()return false end;assert(not B.Find(city,anchor,n,1,false),"native rejection ignored");p.CanHaveDistrict=function()return true end;
  p.improvement=-1;assert(not B.SameClearance(plan,assert(B.Find(city,anchor,n,1,false))),"changed confirmation accepted");p.improvement=2;
 end
 local originalTechs=Players[0].GetTechs;
 Players[0].GetTechs=function()return {HasTech=function(_,id)return id~=3 end}end;
 assert(not B.Find(city,anchor,n,1,false),"missing removal technology accepted");Players[0].GetTechs=originalTechs;
 assert(cleared==0,"preview removed something");
end
print("PASS: complete footprint checks, removal technology, native veto and changed confirmation");
local function startThree()
 local anchor=setup(3,1);
 for i=1,2 do local p=Map.GetPlot(i,0);p.feature=2;p.improvement=2;p.CanHaveDistrict=function()return true end end
 anchor.district=GameInfo.Districts.DISTRICT_BS_BRIDGE_3_D1.Index;
 Events.DistrictAddedToMap.Fire(0,1,7,anchor.x,anchor.y,anchor.district);
 assert(B.Records(city)[tostring(anchor.index)]);return anchor;
end
local anchor=startThree();assert(cleared==0,"support cleared before completion");
anchor.complete=true;Events.DistrictBuildProgressChanged.Fire(0,1,7,0,0,anchor.district);
assert(cleared==4,"not all confirmed support occupants cleared");
for i=1,2 do local p=Map.GetPlot(i,0);assert(p.feature==-1 and p.improvement==-1 and p.district~=-1)end
print("PASS: completion clears only confirmed support occupants and attaches districts");
cleared=0;anchor=startThree();Map.GetPlot(2,0).improvement=3;
anchor.complete=true;Events.DistrictBuildProgressChanged.Fire(0,1,7,0,0,anchor.district);
assert(cleared==0,"partial removal before whole-footprint validation");
assert(Map.GetPlot(1,0).feature==2 and Map.GetPlot(1,0).improvement==2,"unaffected tile modified");
print("PASS: changed later segment aborts before any support clearance");
print("CLEARANCE_REGRESSION_PASS");
'''
out=root/'build/clearance-acceptance.lua';out.write_text(fixture,encoding='utf-8')
r=subprocess.run(['node',str(repo/'node_modules/fengari-node-cli/src/lua-cli.js'),str(out),str(repo/'mod')],capture_output=True,text=True,encoding='utf-8',check=True)
print(r.stdout,end='');print(r.stderr,end='');assert not r.stderr and 'CLEARANCE_REGRESSION_PASS' in r.stdout
