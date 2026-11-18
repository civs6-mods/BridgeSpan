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
        local function check(damaged)
            local current=B.Records(city)[tostring(plan.Anchor)];
            assert(current.Pillaged==damaged and not current.ArtMask);
            for segment,index in ipairs(plan.Plots) do
                assert(byIndex[index]:IsPillaged()==damaged,"mixed state within bridge");
                local marker=GameInfo.Buildings[B.Marker(plan,segment,plan.Slot)].Index;
                if damaged then assert(not buildings:HasBuilding(marker))
                else assert(locations[marker]==index) end
            end
        end
        check(true); assert(axes~=originalAxes,"broken bridge left open in pathfinding");
        Events.LoadGameViewStateDone.Fire(); check(true);
        byIndex[plan.Anchor]:SetPillaged(false); check(false);
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
byIndex[a.Plots[2]]:SetPillaged(true);
assert(not byIndex[b.Anchor]:IsPillaged());
byIndex[b.Plots[3]]:SetPillaged(true);
byIndex[b.Anchor]:SetPillaged(false);
for _,i in ipairs(a.Plots)do assert(byIndex[i]:IsPillaged(),"repair leaked to the other bridge") end
for _,i in ipairs(b.Plots)do assert(not byIndex[i]:IsPillaged()) end
byIndex[a.Anchor]:SetPillaged(false);
for _,i in ipairs(a.Plots)do assert(not byIndex[i]:IsPillaged()) end
print("DAMAGE_MATRIX_PASS: 132 damaged subsets, both district generations, six directions, reload, whole repair, two same-type bridges repaired separately");
'''
out=root/'build/damage-matrix.lua';out.write_text(fixture+cases)
r=subprocess.run(['node',str(repo/'node_modules/fengari-node-cli/src/lua-cli.js'),str(out),str(repo/'mod')],capture_output=True,text=True,encoding='utf8')
if r.stderr or r.returncode: print(r.stdout);print(r.stderr);raise SystemExit(1)
assert 'DAMAGE_MATRIX_PASS' in r.stdout
print(r.stdout.splitlines()[-1])
