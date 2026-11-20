"""Gameplay damage and city-transfer checks using the independent placement fixture.

These are mocked gameplay tests; native path/movement acceptance is separate.
"""
from pathlib import Path
import subprocess
(Path(__file__).resolve().parent/"build").mkdir(exist_ok=True)

root = Path(__file__).resolve().parent
repo = root.parent
fixture = (root / 'fixtures/placement.lua').read_text(encoding='utf-8')
fixture = fixture.replace('Technologies={BRIDGE_TECH={Index=1}}',
                          'Technologies={BRIDGE_TECH={Index=1},TECH_SHIPBUILDING={Index=2}}')
needle = '    assert(start.owner==-1 and finish.purchaseCity==bankCity,"bank ownership changed");'
assert fixture.count(needle) == 1
cases = r'''
    -- Native building pillage is the first target on a bridge tile. One event
    -- must exhaust both targets, while a district repair rebuilds the component.
    for segment,index in ipairs(plan.Plots) do
        local deck=byIndex[index];
        local marker=GameInfo.Buildings[B.Marker(plan,segment,plan.Slot)].Index;
        buildings:SetPillaged(marker,true);
        marker=GameInfo.Buildings[B.Marker(plan,segment,plan.Slot)].Index;
        assert(deck:IsPillaged() and not buildings:HasBuilding(marker),"first pillage left a second target");
        for i,idx in ipairs(plan.Plots) do
            assert(byIndex[idx]:IsPillaged() and not locations[GameInfo.Buildings[B.Marker(plan,i,plan.Slot)].Index]);
        end
        byIndex[plan.Anchor]:SetPillaged(false);
        assert(not deck:IsPillaged() and locations[marker]==index,"root repair must restore all crossings");
        deck:SetPillaged(true);
        assert(not locations[marker],"damaged tile still has a crossing");
        byIndex[plan.Anchor]:SetPillaged(false);
        pillagedBuildings[marker]=true; -- native component-only damage from an old save
        Events.LoadGameViewStateDone.Fire();
        assert(deck:IsPillaged(),"old damage was not restored");
        byIndex[plan.Anchor]:SetPillaged(false);
    end
    local oldOwner=city.GetOwner;
    local previousProperties=properties;
    properties={}; -- real engine replaces the city object without Lua properties
    city.GetOwner=function() return 1; end;
    Players[1]=Players[0];
    for _,p in pairs(byIndex) do if p.purchaseCity==city then p.owner=1; end end;
    hasTech=false; -- free city has no bridge tech; adoption is not new placement
    Events.DistrictRemovedFromMap.Fire(0,1,7,anchor.x,anchor.y,anchor.district);
    Events.CityAddedToMap.Fire(1,7);
    Events.DistrictAddedToMap.Fire(1,1,7,anchor.x,anchor.y,anchor.district);
    Events.CityTransfered.Fire(1,7,0,0);
    local adopted=assert(B.Records(city)[tostring(anchor.index)]);
    assert(adopted.Owner==1 and adopted.CityID==7 and adopted.Complete);
    assert(anchor.district==B.District(plan,1).Index,"transfer destroyed existing bridge");
    properties=previousProperties;
    hasTech=true;
    Players[1]=nil;
    city.GetOwner=oldOwner;
    for _,p in pairs(byIndex) do if p.purchaseCity==city then p.owner=0; end end;

    -- Another bridge in the same city must survive repairs and removal.
    plot(-1,3,false); local second=plot(0,3,true); plot(1,3,false);
    second.district=GameInfo.Districts.DISTRICT_BS_BRIDGE_1_D1.Index;
    second.complete=true;
    Events.DistrictAddedToMap.Fire(0,9,7,0,3,second.district);
    local secondPlan=assert(B.Records(city)[tostring(second.index)]);
    assert(secondPlan.Complete);
    local secondMarker=GameInfo.Buildings[B.Marker(secondPlan,1,secondPlan.Slot)].Index;
    assert(locations[secondMarker]==second.index and secondPlan.Slot~=plan.Slot);
    local middle=byIndex[plan.Plots[2]];
    local oldType=middle.district; middle.district=-1;
    Events.DistrictRemovedFromMap.Fire(0,2,7,middle.x,middle.y,oldType);
    local middleMarker=GameInfo.Buildings[B.Marker(plan,2,plan.Slot)].Index;
    locations[middleMarker]=nil;
    Events.LoadGameViewStateDone.Fire();
    assert(not buildings:HasBuilding(middleMarker),"missing support regained a crossing component");
    assert(locations[secondMarker]==second.index);
    middle.district=oldType;
    Events.LoadGameViewStateDone.Fire();
    assert(locations[middleMarker]==middle.index);
    local rootType=anchor.district; anchor.district=-1;
    Events.DistrictRemovedFromMap.Fire(0,1,7,anchor.x,anchor.y,rootType);
    assert(byIndex[plan.Plots[2]].district==-1 and byIndex[plan.Plots[3]].district==-1);
    assert(second.district==B.District(secondPlan,1).Index and locations[secondMarker]==second.index);
    assert(not B.Records(city)[tostring(anchor.index)],"removed root still reserves span");
    assert(B.Records(city)[tostring(second.index)]==secondPlan,"other bridge record lost");
    print("PASS: damage/markers/reload/transfer/partial removal/root cleanup/multiple bridges",directional);
'''
output = root / 'build/test_damage.lua'
output.write_text(fixture.replace(needle, needle + cases), encoding='utf-8')
result = subprocess.run(['node',str(repo/'node_modules/fengari-node-cli/src/lua-cli.js'),
    str(output),str(repo/'mod')], capture_output=True,text=True,encoding='utf-8')
print(result.stdout,end='')
print(result.stderr,end='')
assert result.returncode == 0 and not result.stderr
assert result.stdout.count('PASS: damage/markers/') == 2
