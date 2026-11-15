include("InstanceManager");
local rows=InstanceManager:new("BridgeOption","Button",Controls.Options);
local session;
local function showBanks(span)
    ContextPtr:SetHide(false);
    for i,id in ipairs({"BankA","BankB"})do
        local plot=span and Map.GetPlotByIndex(i==1 and span.Start or span.Finish);
        Controls[id]:SetHide(plot==nil);
        if plot then
            local x,y,z=UI.GridToWorld(plot:GetX(),plot:GetY());
            Controls[id]:SetWorldPositionVal(x,y,z+10);
        end
    end
end
local function close()
    if session then UIManager:PopModal(ContextPtr);end
    session=nil;Controls.PickerRoot:SetHide(true);
end
local function hide()
    close();showBanks(nil);ContextPtr:SetHide(true);
end
local function selectOption(index)
    if not session or session.selected==index then return end
    local span=session.choices[index];if not span then return end
    session.selected=index;
    for i,row in ipairs(session.rows)do row.Button:SetSelected(i==index)end
    showBanks(span);session.preview(span);
end
local function accept(index)
    if not session then return end
    local span=session.choices[index];local callback=session.accept;
    close();callback(span);
end
local function cancel()
    if not session then return end
    local callback=session.cancel;hide();callback();
end
local function open(choices,onPreview,onAccept,onCancel)
    hide();rows:ResetInstances();
    session={choices=choices,preview=onPreview,accept=onAccept,cancel=onCancel,rows={}};
    for index,span in ipairs(choices)do
        local row=rows:GetInstance();session.rows[index]=row;
        row.Button:SetText(Locale.Lookup("LOC_BS_DIRECTION_OPTION",index,span.Span));
        row.Button:RegisterCallback(Mouse.eMouseEnter,function()selectOption(index)end);
        row.Button:RegisterCallback(Mouse.eLClick,function()accept(index)end);
    end
    Controls.Options:CalculateSize();Controls.Options:ReprocessAnchoring();
    Controls.Panel:SetSizeY(180+49*#choices);
    ContextPtr:SetHide(false);Controls.PickerRoot:SetHide(false);
    UIManager:PushModal(ContextPtr);selectOption(1);
end
Controls.Cancel:RegisterCallback(Mouse.eLClick,cancel);
ContextPtr:SetInputHandler(function(message,key)
    if not session then return false end
    if message==KeyEvents.KeyUp then
        if key==Keys.VK_ESCAPE then cancel();
        elseif key==Keys.VK_RETURN then accept(session.selected);
        elseif key==Keys.VK_UP then selectOption((session.selected-2)%#session.choices+1);
        elseif key==Keys.VK_DOWN then selectOption(session.selected%#session.choices+1);end
    end
    return true;
end);
local function modeChanged(oldMode,newMode)
    if oldMode==InterfaceModeTypes.DISTRICT_PLACEMENT and newMode~=oldMode then hide()end
end
LuaEvents.BridgeSpan_OpenPlacementPicker.Add(open);
LuaEvents.BridgeSpan_ShowPlacementBanks.Add(showBanks);
LuaEvents.BridgeSpan_HidePlacementPicker.Add(hide);
Events.InterfaceModeChanged.Add(modeChanged);
ContextPtr:SetShutdown(function()
    hide();LuaEvents.BridgeSpan_OpenPlacementPicker.Remove(open);
    LuaEvents.BridgeSpan_ShowPlacementBanks.Remove(showBanks);
    LuaEvents.BridgeSpan_HidePlacementPicker.Remove(hide);
    Events.InterfaceModeChanged.Remove(modeChanged);
end);
hide();
