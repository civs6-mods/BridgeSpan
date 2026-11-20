"""Replay v43 district snapshots directly into a fresh mocked v47 load event."""
from pathlib import Path
import subprocess
import tempfile

repo = Path(__file__).resolve().parents[1]
fixture = (repo / "tests/fixtures/placement.lua").read_text(encoding="utf-8")
fixture = fixture.split('include("BridgeSpan_DistrictCommon");', 1)[0]
assert fixture.count("for slot=1,2 do") == 1
fixture = fixture.replace("for slot=1,2 do", "for slot=1,36 do")
cases = r'''
include("BridgeSpan_DistrictGameplay")
local B = BridgeSpanDistrict
local total = 0
local healthy = 0
local function run(slot, oriented, n, d, mask)
    local anchor, start, finish = setup(n,d)
    local plan = {Owner=0, CityID=7, Anchor=anchor.index, Plots={}, Complete=true,
        Slot=slot, Direction=d, Span=n, Start=start.index, Finish=finish.index}
    local rootType = "DISTRICT_BS_BRIDGE_"..n
    if oriented then plan.Root=rootType.."_D"..d end
    local vec = vectors[d+1]
    for i=1,n do
        local p=plots[key((i-1)*vec[1], (i-1)*vec[2])]
        local oldType=i==1 and (plan.Root or rootType) or ("DISTRICT_BS_SUPPORT_"..i)
        p.district=assert(GameInfo.Districts[oldType]).Index
        p.complete=true
        p.pillaged=math.floor(mask/2^(i-1))%2==1
        plan.Plots[i]=p.index
    end
    city:SetProperty(B.Key, {[tostring(anchor.index)]=plan})
    local function expect(broken)
        local record=assert(B.Records(city)[tostring(anchor.index)])
        assert(record.Slot==slot and record.Complete and record.TileArt)
        assert(record.Pillaged==broken and record.TileUpgrade==nil)
        for i,idx in ipairs(plan.Plots) do
            local p=byIndex[idx]
            local target=i==1 and (rootType.."_D"..d) or ("DISTRICT_BS_SUPPORT_"..i.."_N"..n.."_D"..d)
            assert(p.district==GameInfo.Districts[target].Index and p:IsPillaged()==broken)
            local marker=GameInfo.Buildings["BUILDING_BS_TILE_"..i.."_S"..slot].Index
            assert(locations[marker]==(not broken and idx or nil))
        end
        local count=0
        for _ in pairs(locations) do count=count+1 end
        assert(count==(broken and 0 or n))
    end
    Events.LoadGameViewStateDone.Fire()
    expect(mask~=0)
    Events.LoadGameViewStateDone.Fire()
    expect(mask~=0)
    if mask~=0 then
        anchor:SetPillaged(false)
        expect(false)
    else
        healthy=healthy+1
    end
end
for slot=1,36 do
    for _,oriented in ipairs({false,true}) do
        for n=1,3 do
            for d=0,5 do
                for mask=0,2^n-1 do
                    local ok,err=pcall(run,slot,oriented,n,d,mask)
                    if not ok then error(string.format("slot=%d oriented=%s span=%d dir=%d mask=%d %s",
                        slot,tostring(oriented),n,d,mask,tostring(err))) end
                    total=total+1
                end
            end
        end
    end
end
assert(total==6048 and healthy==1296)
print("PASS v43 cold load: "..total.." combinations, "..healthy.." intact, "..(total-healthy).." damaged.")
'''
with tempfile.TemporaryDirectory() as temp:
    runner = Path(temp) / "v43-cold.lua"
    runner.write_text(fixture + cases, encoding="utf-8")
    result = subprocess.run(["node", str(repo / "node_modules/fengari-node-cli/src/lua-cli.js"),
                             str(runner), str(repo / "mod")], capture_output=True, encoding="utf-8")
    if result.returncode or result.stderr or "PASS v43 cold load:" not in result.stdout:
        raise SystemExit(result.stderr or result.stdout[-2000:] or "Missing success marker")
    print(result.stdout.splitlines()[-1])
