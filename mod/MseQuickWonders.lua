-- Loaded only by Map Search Extension. Its main script is private and does
-- not load the stock MapSearchPanel_* extensions. Keep its wonder selector
-- on the original controls while extending the already-loaded search panel.
include("MapSearchPanel_BridgeSpan");
local entries=InstanceManager:new("MseWonderListEntry","MSEWonderButton",Controls.MseStackWonders);

local function bindTerm(button)
    button:RegisterCallback(Mouse.eLClick,function() AppendSuggestionText(button:GetText());end);
end

function AddWonToList(row)
    local entry=entries:GetInstance();
    entry.MSEWonderButton:SetText(Locale.Lookup(row.Name));
    entry.MSEWonderIcon:SetIcon("ICON_"..row.BuildingType);
    bindTerm(entry.MSEWonderButton);
end

function PopulateQuickWondersPanel()
    entries:DestroyInstances();
    local wonders={};
    for row in GameInfo.Buildings() do
        if row.IsWonder then wonders[#wonders+1]=row;end
    end
    table.sort(wonders,function(a,b)return Locale.Lookup(a.Name)<Locale.Lookup(b.Name);end);
    for _,row in ipairs(wonders) do AddWonToList(row);end
end

function InitQuickWondersPanel()
    bindTerm(Controls.MseWonButton1);
    bindTerm(Controls.MseWonButton2);
    PopulateQuickWondersPanel();
end
