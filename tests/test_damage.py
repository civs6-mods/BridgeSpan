"""Behavioral Lua publication checks using the independent placement fixture.

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
fixture = fixture.replace('"CityRemovedFromMap","PlayerTurnActivated"',
                          '"CityRemovedFromMap","CityTransfered","PlayerTurnActivated"')
needle = '    assert(start.owner==-1 and finish.purchaseCity==bankCity,"bank ownership changed");'
assert fixture.count(needle) == 1
cases = r'''
    local intact=axes;
    for segment,index in ipairs(plan.Plots) do
        local deck=byIndex[index];
        deck.IsPillaged=function() return true; end;
        Events.DistrictPillaged.Fire(0,segment,7,deck.x,deck.y,deck.district);
        assert(axes==intact,"district pillage dropped bridge restrictions");
        Events.LoadGameViewStateDone.Fire();
        assert(axes==intact,"damaged save reload dropped bridge restrictions");
        deck.IsPillaged=function() return false; end;
        local marker=GameInfo.Buildings[B.Marker(plan,segment,plan.Slot)].Index;
        buildings.IsPillaged=function(_,id) return id==marker; end;
        Events.PlayerTurnActivated.Fire(0);
        assert(axes==intact,"marker pillage dropped bridge restrictions");
        buildings.IsPillaged=function() return false; end;
        local oldLocation=locations[marker]; locations[marker]=nil;
        Events.PlayerTurnActivated.Fire(0);
        assert(axes==intact,"missing marker dropped surviving deck restrictions");
        locations[marker]=oldLocation;
        Events.PlayerTurnActivated.Fire(0);
        assert(axes==intact,"repair failed to restore restrictions");
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
    assert(axes==intact,"city transfer dropped bridge restrictions");
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
    local function rowCount() local n=0; for row in axes:gmatch("[^;]+") do n=n+1 end; return n end;
    assert(rowCount()==4,"second bridge not published");
    local middle=byIndex[plan.Plots[2]];
    local oldType=middle.district; middle.district=-1;
    Events.DistrictRemovedFromMap.Fire(0,2,7,middle.x,middle.y,oldType);
    assert(rowCount()==3,"partial removal must keep only existing decks and other bridge");
    assert(not axes:find(middle.x..","..middle.y..",",1,true) or middle.x==0,
        "removed middle deck still published");
    middle.district=oldType;
    Events.PlayerTurnActivated.Fire(0);
    assert(rowCount()==4,"restored support failed to republish");
    local rootType=anchor.district; anchor.district=-1;
    Events.DistrictRemovedFromMap.Fire(0,1,7,anchor.x,anchor.y,rootType);
    assert(rowCount()==1,"root removal leaves stale restrictions or drops other bridge");
    assert(not B.Records(city)[tostring(anchor.index)],"removed root still reserves span");
    assert(B.Records(city)[tostring(second.index)]==secondPlan,"other bridge record lost");
    print("PASS: damage/markers/reload/transfer/partial removal/root cleanup/multiple bridges",directional);
'''
# Verify exact row starts rather than substring matches on neighbours.
cases = cases.replace('    assert(not axes:find(middle.x..","..middle.y..",",1,true) or middle.x==0,\n        "removed middle deck still published");',
    '    for row in axes:gmatch("[^;]+") do assert(not row:match("^"..middle.x..","..middle.y..","),"removed deck still published") end;')
output = root / 'build/test_damage.lua'
output.write_text(fixture.replace(needle, needle + cases), encoding='utf-8')
result = subprocess.run(['node',str(repo/'node_modules/fengari-node-cli/src/lua-cli.js'),
    str(output),str(repo/'mod')], capture_output=True,text=True,encoding='utf-8')
print(result.stdout,end='')
print(result.stderr,end='')
assert result.returncode == 0 and not result.stderr
assert result.stdout.count('PASS: damage/markers/') == 2
