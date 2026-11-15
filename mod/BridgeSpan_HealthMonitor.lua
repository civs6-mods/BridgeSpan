-- Healthy requires THIS native call to echo its nonce and runtime facts.
-- No saved acknowledgement or external diagnostic file is trusted.
-- The UI invokes Check through the established gameplay ExposedMembers bridge.

local sequence=0;
local function Check()
    sequence=sequence+1;
    local nonce="bs-live-"..tostring(Game.GetCurrentGameTurn()).."-"..tostring(sequence);
    local ok,echo,protocol,state,published,decks,rejections=pcall(Game.SetProperty,
        "BS_BridgeHealth_Query_v1",nonce);
    local status={Ready=false,Reason="NO_NATIVE_REPLY",Turn=Game.GetCurrentGameTurn()};
    if not ok then status.Reason="QUERY_ERROR";
    elseif echo~=nonce then status.Reason="NO_NATIVE_REPLY";
    elseif protocol~=1 or type(state)~="number" or type(decks)~="number"
        or decks<0 or decks%1~=0 or type(rejections)~="number" then status.Reason="PROTOCOL_MISMATCH";
    elseif state~=1 then status.Reason="NATIVE_INACTIVE";
    elseif published~=1 then status.Reason="AXES_NOT_ACCEPTED";
    else
        local payload=Game.GetProperty("BS_NativeBridgeAxis_v1");
        local expected=0;
        if type(payload)=="string" then
            for _ in payload:gmatch("[^;]+") do expected=expected+1; end
        end
        -- The engine reads a published empty string back as numeric zero on
        -- fresh maps (and absent properties may be nil).
        -- A successful immediate native query with zero decks proves the empty
        -- snapshot; nil must still reject any non-empty native snapshot.
        if (payload~=nil and payload~=0 and type(payload)~="string") or decks~=expected then status.Reason="AXES_OUT_OF_SYNC";
        else status.Ready=true; status.Reason="READY"; status.Decks=decks; end
    end
    ExposedMembers.BridgeSpanHealth_v1.Status=status;
    return status;
end
ExposedMembers.BridgeSpanHealth_v1={Check=Check};
Events.LoadGameViewStateDone.Add(Check);
Events.PlayerTurnActivated.Add(Check);
