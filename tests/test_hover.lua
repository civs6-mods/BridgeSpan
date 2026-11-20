-- Lens-call regression; real engine rendering still needs visual verification.
local source=assert(arg[1]);
local mode,hash,cursor=1,2,10;
local calls={clear=0,focus=0,unfocus=0,art=0,visit=0,nativeHover=0,nativeArt=0,nativeConfirm=0};
local focused,painted,shadows={},{},{};
local handlers={};local popup;local picker;local banks;local requested=0;local legal=true;local unchanged=true;local lastRequest;
local city={GetOwner=function()return 0 end,GetID=function()return 7 end,
 GetBuildQueue=function()return {GetDistrictCost=function()return 243 end}end};
local currentCity=city;
local function plan(anchor,n,d,plots)
 local clearance={};for _,id in ipairs(plots)do clearance[tostring(id)]={Feature=-1,Improvement=-1}end
 return {Anchor=anchor,Span=n,Direction=d,Plots=plots,Start=1000+d,Finish=2000+d,Clearance=clearance};
end
local p3=plan(10,3,0,{10,11,12});
local p2=plan(10,2,1,{10,20});
local p1=plan(40,1,2,{40});local p1b=plan(40,1,4,{40});
local options={[3]={[10]={p3}},[2]={[10]={p2},[30]={plan(30,2,2,{30,31})}},[1]={[40]={p1,p1b}}};
BridgeSpanDistrict={Length=function(h)if h==1 or h==2 then return h end end,
 VisitPlacements=function(_,n,cb) calls.visit=calls.visit+1;for anchor,choices in pairs(options[n])do cb(anchor,choices)end end,
 PlacementDistrict=function(p)return {Hash=100+p.Span*6+p.Direction,Index=p.Span,Name="Bridge"}end,
 Find=function()return legal end,SameClearance=function()return unchanged end};
GameInfo={Features={},Improvements={}};
local withHarmony=arg[2]=="harmony";
local worldInputLoaded=false;
Modding={IsModActive=function(id)
    assert(id=="521b8777-0977-4859-a5ee-3e411a732e5c");
    return withHarmony;
end};
include=function(name)
    if name=="BridgeSpan_DistrictCommon" then return end
    assert(not worldInputLoaded and name==(withHarmony and "HD_WorldInput" or "WorldInput_Expansion2"),
        "bridge placement replaced the active adjacent-improvement handlers");
    worldInputLoaded=true;
end;
ConfirmPlaceDistrict=function()calls.nativeConfirm=calls.nativeConfirm+1 end;
RealizePlotArtForDistrictPlacement=function()calls.nativeArt=calls.nativeArt+1 end;
RealizeCurrentPlaceDistrictOrWonderPlot=function()calls.nativeHover=calls.nativeHover+1 end;
CityOperationTypes={PARAM_DISTRICT_TYPE="district",PARAM_X="x",PARAM_Y="y",BUILD="build"};
CityOperationResults={SUCCESS_CONDITIONS="warnings"};
CityCommandTypes={PARAM_YIELD_TYPE="yield"};YieldTypes={GOLD=2,FAITH=5};
local currency;
InterfaceModeTypes={DISTRICT_PLACEMENT=1};CursorTypes={RANGE_ATTACK=1};
UI={GetInterfaceModeParameter=function(key)if key=="yield" then return currency end return hash end,GetHeadSelectedCity=function()return currentCity end,
 GetInterfaceMode=function()return mode end,GetCursorPlotID=function()return cursor end,PlaySound=function()end};
UIManager={SetUICursor=function()end};
UILens={CreateLensLayerHash=function()return 1 end,SetActive=function()end,
 ClearLayerHexes=function()calls.clear=calls.clear+1;focused={};painted={}end,
 SetAdjacencyBonusDistict=function(i)calls.art=calls.art+1;painted[i]=true end,
 FocusHex=function(_,i)calls.focus=calls.focus+1;focused[i]=true end,
 UnFocusHex=function(_,i)calls.unfocus=calls.unfocus+1;focused[i]=nil end};
LuaEvents={StrategicView_MapPlacement_AddDistrictPlacementShadowHexes=function(t)shadows=t end,
 BridgeSpan_ShowPlacementBanks=function(span)banks=span end,
 BridgeSpan_HidePlacementPicker=function()picker=nil;banks=nil end,
 BridgeSpan_OpenPlacementPicker=function(choices,preview,accept,cancel)
  picker={choices=choices,preview=preview,accept=accept,cancel=cancel};preview(choices[1]);
 end};
Events={InterfaceModeChanged={Add=function(f)handlers.mode=f end}};
Map={GetPlotByIndex=function(i)return {GetX=function()return i end,GetY=function()return 0 end}end};
SetInsertModeParams=function()end;
CityManager={CanStartOperation=function()return legal,{warnings={"NATIVE_REMOVAL_WARNING"}} end,RequestOperation=function(_,_,params)requested=requested+1;lastRequest=params end};
ExitPlacementMode=function()mode=0;handlers.mode(1,0)end;
Locale={Lookup=function(key,...)return key..":"..table.concat({...},",")end};
PopupDialogInGame={new=function(_,id)
 local p={id=id,buttons={}};popup=p;
 function p:AddTitle(t)self.title=t end
 function p:AddText(t)self.text=t end
 function p:AddConfirmButton(_,f)self.confirm=f end
 function p:AddCancelButton(_,f)self.cancel=f end
 function p:AddCustomButton(label,f)self.buttons[#self.buttons+1]={label=label,run=f}end
 function p:Open()end
 return p;
end};
local function equalsSet(actual,expected,label)
 local wanted={};for _,v in ipairs(expected)do wanted[v]=true end
 for v in pairs(actual)do assert(wanted[v],label..": unexpected "..v)end
 for v in pairs(wanted)do assert(actual[v],label..": missing "..v)end
end
local function waterOnly()
 for i in pairs(painted)do assert(i<1000,"land bank painted")end
 for _,i in ipairs(shadows)do assert(i<1000,"land bank revealed")end
end
dofile(source);
assert(worldInputLoaded,"missing ruleset input script");
RealizePlotArtForDistrictPlacement();waterOnly();equalsSet(painted,{10,30},"clickable anchors");
RealizeCurrentPlaceDistrictOrWonderPlot();equalsSet(focused,{10},"ambiguous hover");
local baseline={};for k,v in pairs(calls)do baseline[k]=v end
for _=1,1000 do RealizeCurrentPlaceDistrictOrWonderPlot()end
for k,v in pairs(calls)do assert(v==baseline[k],"stationary hover repeated "..k)end
print("PASS: 1000 mouse moves within a tile produce no lens redraw or placement query");
-- Engine proxy identity is not a reliable city-change signal.
currentCity=setmetatable({},{__index=city});RealizeCurrentPlaceDistrictOrWonderPlot();
assert(calls.clear==baseline.clear,"same city wrapper caused redraw");
cursor=30;RealizeCurrentPlaceDistrictOrWonderPlot();equalsSet(focused,{30},"next anchor");
assert(calls.clear==baseline.clear and calls.visit==baseline.visit,"tile change rebuilt placement layer");
cursor=-1;RealizeCurrentPlaceDistrictOrWonderPlot();equalsSet(focused,{},"outside map");
cursor=10;RealizeCurrentPlaceDistrictOrWonderPlot();ConfirmPlaceDistrict();
assert(picker and #picker.choices==2,"ambiguous choices not offered");
equalsSet(focused,{10,20},"first layout only");waterOnly();assert(banks==p2);
picker.preview(picker.choices[2]);equalsSet(focused,{10,11,12},"hover switches bridge body");assert(banks==p3);
cursor=30;RealizeCurrentPlaceDistrictOrWonderPlot();equalsSet(focused,{10,11,12},"modal focus lock");
local firstPicker=picker;ConfirmPlaceDistrict();assert(picker==firstPicker,"double click opened duplicate picker");
picker.accept(picker.choices[2]);assert(popup.id=="BridgeSpanConfirm");
assert(popup.text:find("NATIVE_REMOVAL_WARNING",1,true),"native removal warning omitted");
popup.cancel();assert(not banks);equalsSet(painted,{10,30},"cancel restores candidates");equalsSet(focused,{30},"cancel restores hover");
cursor=10;ConfirmPlaceDistrict();picker.cancel();assert(not banks and not picker);
local twoChoices=options[2][10];options[2][10]=nil;
cursor=10;ConfirmPlaceDistrict();equalsSet(focused,{10,11,12},"automatic three-tile body");
legal=false;popup.confirm();assert(requested==0,"stale illegal plan submitted");
equalsSet(painted,{10,30},"failed validation restores candidates");legal=true;options[2][10]=twoChoices;
print("PASS: separate layout previews, selection, cancellation and stale-plan rejection");
hash=1;cursor=40;RealizeCurrentPlaceDistrictOrWonderPlot();waterOnly();equalsSet(focused,{40},"stone hover");
-- Reverse enumeration to prove the automatic orientation is deterministic.
options[1][40]={p1b,p1};
ConfirmPlaceDistrict();assert(picker and #picker.choices==2,"stone choices omitted");
assert(picker.choices[1]==p1,"option order depended on enumeration");
picker.preview(picker.choices[2]);assert(banks==p1b,"one-tile orientation has no visible bank distinction");
picker.accept(picker.choices[2]);equalsSet(focused,{40},"stone confirmation");popup.confirm();assert(requested==1);
assert(lastRequest.district==110,"chosen orientation ignored");
equalsSet(focused,{},"placement exit");
mode=1;hash=2;cursor=30;RealizePlotArtForDistrictPlacement();ConfirmPlaceDistrict();
assert(popup.id=="BridgeSpanConfirm","single option needs extra direction click");popup.cancel();
mode=1;hash=2;cursor=30;ConfirmPlaceDistrict();unchanged=false;popup.confirm();
assert(requested==1,"changed occupants removed without a new confirmation");unchanged=true;
local p=options[2][30][1];p.Clearance['31']={Feature=5,Improvement=6};
GameInfo.Features[5]={Name='Kelp'};GameInfo.Improvements[6]={Name='Fishery'};
ConfirmPlaceDistrict();assert(popup.text:find('Kelp',1,true) and popup.text:find('Fishery',1,true),'support clearance warnings omitted');popup.cancel();
handlers.mode(1,0);mode=0;hash=99;RealizeCurrentPlaceDistrictOrWonderPlot();
RealizePlotArtForDistrictPlacement();ConfirmPlaceDistrict();
assert(calls.nativeArt==1 and calls.nativeHover==1 and calls.nativeConfirm==1,"stock canal/wonder fallback changed");
print("PASS: one-tile choice, single-option shortcut, clearance warnings, exit cleanup and stock fallback");
print("HOVER_REGRESSION_PASS");
GameInfo.Districts={[1]={DistrictType="DISTRICT_BS_BRIDGE_1"},[99]={DistrictType="DISTRICT_CAMPUS"}};
BridgeSpanDistrict.IsBridgeDistrict=function(row)return row==GameInfo.Districts[1] end;
local before=requested;
for _,yield in ipairs({YieldTypes.GOLD,YieldTypes.FAITH}) do
    currency=yield;mode=1;hash=1;popup=nil;
    local native=calls.nativeConfirm;
    ConfirmPlaceDistrict({});
    assert(mode==0 and requested==before and not popup and not picker and calls.nativeConfirm==native);
    mode=1;hash=99;ConfirmPlaceDistrict({});assert(calls.nativeConfirm==native+1);
end
print("PASS: stale bridge purchase cancelled and native district purchase forwarded for both currencies");
