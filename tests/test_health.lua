local root=assert(arg[1]);
local function event() local h={}; return {Add=function(f) h[#h+1]=f end,Fire=function(...) for _,f in ipairs(h) do f(...) end end} end
Events={LoadGameViewStateDone=event(),PlayerTurnActivated=event()};
ExposedMembers={};
local mode="valid";
local lastNonce;
local payload="5,10,4,10,6,10";
Game={GetCurrentGameTurn=function() return 159 end,GetProperty=function() return payload end,
 SetProperty=function(key,nonce)
    assert(key=="BS_BridgeHealth_Query_v1");
    if mode=="missing" then return; end
    if mode=="error" then error("query failed"); end
    if mode=="stale" then return lastNonce,1,1,1,1,0; end
    lastNonce=nonce;
    if mode=="bad-protocol" then return nonce,2,1,1,1,0; end
    if mode=="bad-type" then return nonce,1,1,1,"1",0; end
    if mode=="inactive" then return nonce,1,2,1,1,0; end
    if mode=="rejected" then return nonce,1,1,0,1,1; end
    if mode=="wrong-count" then return nonce,1,1,1,2,0; end
    if mode=="nil-nonempty-native" then return nonce,1,1,1,1,0; end
    return nonce,1,1,1,(payload==nil or payload=="" or payload==0) and 0 or 1,0;
 end};
dofile(root.."/BridgeSpan_HealthMonitor.lua");
local check=ExposedMembers.BridgeSpanHealth_v1.Check;
assert(check().Ready);
for _,m in ipairs({"stale","missing","error","bad-protocol","bad-type","inactive","rejected","wrong-count"}) do
    mode=m; assert(not check().Ready,"false healthy: "..m);
end
mode="valid"; assert(check().Ready); payload=""; assert(check().Ready);
payload=0; assert(check().Ready,'fresh engine normalizes empty payload to numeric zero');
payload=nil; assert(check().Ready,'absent Lua payload matches a proven empty native snapshot');
mode='nil-nonempty-native'; assert(not check().Ready,'missing Lua payload cannot accept a nonempty native snapshot');
mode='rejected'; assert(not check().Ready,'empty Lua state cannot bypass native publication failure');
mode='valid'; payload=1; assert(not check().Ready,'nonzero numeric payload is not an empty snapshot');
mode='valid'; payload="5,10,4,10,6,10";
-- Exercise fault UI callbacks, missing gameplay channel, retry recovery and menu.
function include() end
Locale={Lookup=function(k) return k end};
local update,init,opened,menu,buttons=nil,nil,0,0,{};
ContextPtr={SetInitHandler=function(_,f) init=f end,SetHide=function() end,SetUpdate=function(_,f) update=f end};
Events.ExitToMainMenu=function() menu=menu+1 end;
PopupDialogInGame={new=function() return {
    AddTitle=function() end,AddText=function() end,
    AddCustomButton=function(_,k,f) buttons.retry=f end,
    AddCancelButton=function(_,k,f) buttons.menu=f end,
    Open=function() opened=opened+1 end} end};
dofile(root.."/BridgeSpan_HealthUI.lua");
init(); update(3); assert(opened==0); Events.LoadGameViewStateDone.Fire(); update(3); assert(opened==0);
mode="missing"; update(3); assert(opened==1); update(3); assert(opened==1);
buttons.retry(); assert(opened==2); mode="valid"; buttons.retry(); update(3); assert(opened==2);
ExposedMembers.BridgeSpanHealth_v1=nil; update(3); assert(opened==3);
buttons.menu(); update(3); assert(menu==1 and opened==3);
print("PASS: live-call nonce; vanilla/missing/stale/error/type/protocol/inactive/rejected/count mismatch; empty map; UI load gating, one fault dialog, retry recovery and main menu");
