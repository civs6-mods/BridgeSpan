local source=assert(arg[1]);local rows={};local events={};local input;local shutdown;
local function control()
 local c={callbacks={}};
 function c:RegisterCallback(k,v)self.callbacks[k]=v end
 function c:SetHide(v)self.hidden=v end
 function c:SetText(v)self.text=v end
 function c:SetSelected(v)self.selected=v end
 function c:SetSizeY(v)self.height=v end
 function c:SetWorldPositionVal(x,y,z)self.xyz={x,y,z}end
 function c:CalculateSize()end;function c:ReprocessAnchoring()end
 return c;
end
Controls={Options=control(),BankA=control(),BankB=control(),PickerRoot=control(),Panel=control(),Cancel=control()};
local function event(name)
 local e={};function e.Add(f)events[name]=f end;function e.Remove(f)assert(events[name]==f);events[name]=nil end;return e;
end
LuaEvents={BridgeSpan_OpenPlacementPicker=event('open'),BridgeSpan_ShowPlacementBanks=event('banks'),BridgeSpan_HidePlacementPicker=event('hide')};
Events={InterfaceModeChanged=event('mode')};
InstanceManager={new=function()return {ResetInstances=function()rows={}end,GetInstance=function()local row={Button=control()};rows[#rows+1]=row;return row end}end};
include=function()end;Locale={Lookup=function(k,...)return k..':'..table.concat({...},',')end};
Mouse={eLClick=1,eMouseEnter=2};KeyEvents={KeyUp=1};Keys={VK_ESCAPE=27,VK_RETURN=13,VK_UP=38,VK_DOWN=40};
InterfaceModeTypes={DISTRICT_PLACEMENT=5};
Map={GetPlotByIndex=function(i)return {GetX=function()return i end,GetY=function()return i+1 end}end};
UI={GridToWorld=function(x,y)return x,y,0 end};
local depth=0;
UIManager={PushModal=function()depth=depth+1 end,PopModal=function()depth=depth-1;assert(depth>=0)end};
ContextPtr={SetHide=function()end,SetInputHandler=function(_,f)input=f end,SetShutdown=function(_,f)shutdown=f end};
dofile(source);
local choices={{Span=1,Start=10,Finish=11},{Span=1,Start=20,Finish=21}};
local previews,accepted,cancelled=0,nil,0;
local function open()
 events.open(choices,function()previews=previews+1 end,function(p)accepted=p end,function()cancelled=cancelled+1 end);
end
open();assert(depth==1 and previews==1 and Controls.BankA.xyz[1]==10);
assert(rows[1].Button.text=='LOC_BS_DIRECTION_OPTION:1,1');
for i=1,1000 do rows[1].Button.callbacks[2]()end;assert(previews==1,'stationary hover repaints');
rows[2].Button.callbacks[2]();assert(previews==2 and Controls.BankA.xyz[1]==20 and rows[2].Button.selected);
rows[2].Button.callbacks[1]();assert(accepted==choices[2] and depth==0 and Controls.PickerRoot.hidden and not Controls.BankA.hidden);
events.hide();assert(Controls.BankA.hidden and Controls.BankB.hidden);
open();input(1,40);input(1,13);assert(accepted==choices[2] and depth==0);
open();input(1,27);assert(cancelled==1 and depth==0 and Controls.BankA.hidden);
open();events.mode(5,0);assert(depth==0 and Controls.BankB.hidden);
open();shutdown();assert(depth==0 and next(events)==nil);
print('PICKER_REGRESSION_PASS: previews, stable hover, one-tile banks, keyboard, cancellation and shutdown');
