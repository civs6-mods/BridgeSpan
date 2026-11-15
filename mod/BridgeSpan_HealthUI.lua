include("PopupDialog");
local loaded=false;
local elapsed=0;
local dialogOpen=false;
local function Check()
    local channel=ExposedMembers.BridgeSpanHealth_v1;
    if not channel or type(channel.Check)~="function" then
        return {Ready=false,Reason="GAMEPLAY_MONITOR_MISSING"};
    end
    local ok,status=pcall(channel.Check);
    if ok and type(status)=="table" then return status; end
    return {Ready=false,Reason="MONITOR_ERROR"};
end
local function ShowFault(status)
    if dialogOpen then return; end
    dialogOpen=true;
    local popup=PopupDialogInGame:new("BridgeSpanHealthFault");
    popup:AddTitle(Locale.Lookup("LOC_BS_HEALTH_TITLE"));
    popup:AddText(Locale.Lookup("LOC_BS_HEALTH_BODY"));
    popup:AddText(Locale.Lookup("LOC_BS_HEALTH_CODE",tostring(status.Reason)));
    popup:AddCustomButton(Locale.Lookup("LOC_BS_HEALTH_RETRY"),function()
        dialogOpen=false;
        local current=Check();
        if not current.Ready then ShowFault(current); end
    end);
    popup:AddCancelButton(Locale.Lookup("LOC_BS_HEALTH_MENU"),function()
        loaded=false; dialogOpen=false; Events.ExitToMainMenu();
    end);
    popup:Open();
end
local function Update(delta)
    if not loaded or dialogOpen then return; end
    elapsed=elapsed+delta;
    if elapsed<2 then return; end
    elapsed=0;
    local status=Check();
    if not status.Ready then ShowFault(status); end
end
Events.LoadGameViewStateDone.Add(function() loaded=true; elapsed=0; end);
ContextPtr:SetInitHandler(function() ContextPtr:SetHide(false); ContextPtr:SetUpdate(Update); end);
