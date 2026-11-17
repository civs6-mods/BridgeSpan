"""Enumerate damage subsets and whole-bridge repair using the actual Lua sources."""
from pathlib import Path
import subprocess
root=Path(__file__).resolve().parent;repo=root.parent
fixture=(root/'fixtures/placement.lua').read_text()
fixture=fixture.replace('Technologies={BRIDGE_TECH={Index=1}}','Technologies={BRIDGE_TECH={Index=1},TECH_SHIPBUILDING={Index=2}}')
cases=r'''
local cases=0;
for _,directional in ipairs({false,true})do for span=1,3 do for direction=0,5 do
    local anchor=setup(span,direction);
    anchor.district=GameInfo.Districts["DISTRICT_BS_BRIDGE_"..span..(directional and "_D"..direction or "")].Index;
    if not directional then city:SetProperty(B.PendingKey(anchor.index),{Anchor=anchor.index,Span=span,Direction=direction});end
    anchor.complete=true;
    Events.DistrictAddedToMap.Fire(0,1,7,anchor.x,anchor.y,anchor.district);
    local plan=assert(B.Records(city)[tostring(anchor.index)]);
    assert(plan.Complete);
    for _,index in ipairs(plan.Plots)do byIndex[index].complete=true;end
    Events.LoadGameViewStateDone.Fire();local originalAxes=axes;
    for mask=1,2^span-1 do
        for segment,index in ipairs(plan.Plots)do
            if math.floor(mask/2^(segment-1))%2==1 then
                if mask%2==1 then
                    buildings:SetPillaged(GameInfo.Buildings[B.Marker(plan,segment,plan.Slot)].Index,true);
                else byIndex[index]:SetPillaged(true);end
            end
        end
        assert(B.DamageMask(city,plan)==mask and plan.ArtMask==mask,"wrong damage subset/appearance");
        for segment,index in ipairs(plan.Plots)do
            local damaged=math.floor(mask/2^(segment-1))%2==1;
            assert(byIndex[index]:IsPillaged()==damaged,"damage crossed segment boundary");
            local marker=GameInfo.Buildings[B.Marker(plan,segment,plan.Slot)].Index;
            assert(locations[marker]==index and buildings:IsPillaged(marker)==damaged,"wrong component state/location");
        end
        assert(buildings:HasBuilding(GameInfo.Buildings[B.RepairPermit(plan)].Index),"missing city repair permit");
        Events.LoadGameViewStateDone.Fire();
        assert(B.DamageMask(city,plan)==mask and plan.ArtMask==mask,"reload changed damage subset");
        Events.CityProjectCompleted.Fire(0,7,GameInfo.Projects[B.RepairProject(plan)].Index);
        assert(B.DamageMask(city,plan)==0 and plan.ArtMask==0,"whole-bridge repair incomplete");
        assert(not buildings:HasBuilding(GameInfo.Buildings[B.RepairPermit(plan)].Index),"healthy repair project remains enabled");
        for segment in ipairs(plan.Plots)do assert(B.HealthyMarker(city,plan,segment,buildings),"repair did not restore crossing component");end
        assert(axes==originalAxes,"damage/repair changed bridge entry restrictions");
        cases=cases+1;
    end
end end end
assert(cases==132);
-- Two three-tile bridges sharing support district types in one city.
local anchor=setup(3,1);anchor.district=GameInfo.Districts.DISTRICT_BS_BRIDGE_3_D1.Index;anchor.complete=true;
Events.DistrictAddedToMap.Fire(0,1,7,0,0,anchor.district);
local a=B.Records(city)[tostring(anchor.index)];for _,i in ipairs(a.Plots)do byIndex[i].complete=true;end
plot(-1,5,false);local second=plot(0,5,true);plot(1,5,true);plot(2,5,true);plot(3,5,false);
second.district=anchor.district;second.complete=true;Events.DistrictAddedToMap.Fire(0,9,7,0,5,second.district);
local b=B.Records(city)[tostring(second.index)];for _,i in ipairs(b.Plots)do byIndex[i].complete=true;end
assert(a.Slot~=b.Slot);
for _,plan in ipairs({a,b})do for _,i in ipairs(plan.Plots)do byIndex[i]:SetPillaged(true);end end
Events.CityProjectCompleted.Fire(0,7,GameInfo.Projects[B.RepairProject(b)].Index);
assert(B.DamageMask(city,a)==7 and B.DamageMask(city,b)==0,"repair affected another bridge");
Events.CityProjectCompleted.Fire(0,7,GameInfo.Projects[B.RepairProject(a)].Index);
assert(B.DamageMask(city,a)==0);
-- A project with no valid target is harmless, including a completion after removal.
byIndex[a.Plots[2]]:SetPillaged(true);
local old=anchor.district;anchor.district=-1;Events.DistrictRemovedFromMap.Fire(0,1,7,0,0,old);
Events.CityProjectCompleted.Fire(0,7,GameInfo.Projects[B.RepairProject(a)].Index);
assert(B.DamageMask(city,b)==0 and B.Records(city)[tostring(second.index)],"stale repair changed another bridge");
print("DAMAGE_MATRIX_PASS: 132 damaged subsets, both district generations, six directions, reload, whole repair, two same-type bridges, stale completion");
'''
out=root/'build/damage-matrix.lua';out.write_text(fixture+cases)
r=subprocess.run(['node',str(repo/'node_modules/fengari-node-cli/src/lua-cli.js'),str(out),str(repo/'mod')],capture_output=True,text=True,encoding='utf8')
if r.stderr or r.returncode: print(r.stdout);print(r.stderr);raise SystemExit(1)
assert 'DAMAGE_MATRIX_PASS' in r.stdout
print(r.stdout.splitlines()[-1])
