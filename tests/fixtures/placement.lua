-- Run with Fengari and pass the current BridgeSpan source directory.
local root=assert(arg[1]);
function include(name) dofile(root.."/"..name..".lua"); end
local function event()
    local handlers={};
    return {Add=function(f) handlers[#handlers+1]=f; end,
        Fire=function(...) for _,f in ipairs(handlers) do f(...); end end};
end
Events={};
for _,name in ipairs({"DistrictAddedToMap","DistrictBuildProgressChanged","DistrictRemovedFromMap",
    "LoadGameViewStateDone","DistrictPillaged","CityAddedToMap","CityRemovedFromMap","CityTransfered","CityProjectCompleted","PlayerTurnActivated"}) do
    Events[name]=event();
end
GameEvents={BridgeSpan_DistrictPlan=event(),BuildingPillageStateChanged=event()};
GameConfiguration={IsAnyMultiplayer=function() return false; end};
GameInfo={Districts={},Buildings={},Projects={},Terrains={TERRAIN_COAST={Index=1}},
    Technologies={BRIDGE_TECH={Index=1}}};
local nextIndex=0;
local function district(name)
    nextIndex=nextIndex+1;
    local row={DistrictType=name,Index=nextIndex,Hash=nextIndex};
    GameInfo.Districts[name]=row; GameInfo.Districts[nextIndex]=row;
end
district("DISTRICT_CANAL");
for n=1,3 do
    district("DISTRICT_BS_BRIDGE_"..n);
    for d=0,5 do
        district("DISTRICT_BS_BRIDGE_"..n.."_D"..d);
        for tile=2,n do district("DISTRICT_BS_SUPPORT_"..tile.."_N"..n.."_D"..d); end
    end
end
for n=1,2 do GameInfo.Districts["DISTRICT_BS_BRIDGE_"..n].PrereqTech="BRIDGE_TECH"; end
for n=2,3 do district("DISTRICT_BS_SUPPORT_"..n); end
for slot=1,2 do
    for n=1,3 do
        nextIndex=nextIndex+1;
        local name="BUILDING_BS_TILE_"..n.."_S"..slot;
        local marker={Index=nextIndex,BuildingType=name};
        GameInfo.Buildings[name]=marker; GameInfo.Buildings[nextIndex]=marker;
    end

end
DirectionTypes={DIRECTION_NORTHEAST=0,DIRECTION_EAST=1,DIRECTION_SOUTHEAST=2,
    DIRECTION_SOUTHWEST=3,DIRECTION_WEST=4,DIRECTION_NORTHWEST=5};
local vectors={{1,-1},{1,0},{0,1},{-1,1},{-1,0},{0,-1}};
local plots,byIndex,properties,locations,hasTech,pillagedBuildings;
local city={GetID=function() return 7; end,GetOwner=function() return 0; end};
function city:GetX()return -5;end
function city:GetY()return -5;end
function city:GetProperty(key) return properties[key]; end
function city:SetProperty(key,value) properties[key]=value; end
local otherCity={GetID=function() return 8; end,GetOwner=function() return 0; end};
local bankCity={GetProperty=function(_,key) assert(key=="NAVIGABLE"); return bankCityNavigable; end};
local buildings={HasBuilding=function(_,i) return locations[i]~=nil; end,
    GetBuildingLocation=function(_,i) return locations[i] or -1; end,
    IsPillaged=function(_,i) return pillagedBuildings[i] or false; end,
    SetPillaged=function(_,i,value)
        pillagedBuildings[i]=value;
        GameEvents.BuildingPillageStateChanged.Fire(city:GetOwner(),city:GetID(),i,value);
    end,
    RemoveBuilding=function(_,i) locations[i]=nil;pillagedBuildings[i]=nil; end};
local queue={CreateIncompleteDistrict=function(_,district,index) byIndex[index].district=district; end,
    CreateIncompleteBuilding=function(_,building,index) locations[building]=index;pillagedBuildings[building]=false; end};
function city:GetBuildings() return buildings; end
function city:GetBuildQueue() return queue; end
local cities={FindID=function(_,id) if id==7 then return city; end end,
    Members=function() return ipairs({city}); end};
Players={[0]={IsHuman=function() return true; end,IsTurnActive=function() return true; end,
    GetCities=function() return cities; end,
    GetTechs=function() return {HasTech=function() return hasTech; end}; end}};
PlayerManager={GetAlive=function() return {Players[0]}; end};
Cities={GetPlotPurchaseCity=function(p) return p and p.purchaseCity; end};
CityManager={GetDistrictAt=function(p) return p.district~=-1 and p or nil; end,
    DestroyDistrict=function(p) p.district=-1; end};
local function key(x,y) return x..","..y; end
Map={GetPlotByIndex=function(i) return byIndex[i]; end,
    GetPlot=function(x,y) return plots[key(x,y)]; end,
    GetAdjacentPlot=function(x,y,d)
        local v=vectors[d+1]; return plots[key(x+v[1],y+v[2])];
    end};
local function plot(x,y,water)
    local p={x=x,y=y,index=(x+10)*100+y+10,water=water,owner=0,purchaseCity=city,
        district=-1,terrain=1,feature=-1,resource=-1,improvement=-1};
    function p:GetX() return self.x; end
    function p:GetY() return self.y; end
    function p:GetIndex() return self.index; end
    function p:GetOwner() return self.owner; end
    function p:IsWater() return self.water; end
    function p:IsMountain() return self.mountain; end
    function p:IsCity() return self.city; end
    function p:IsNEOfCliff() return self.ne; end
    function p:IsWOfCliff() return self.w; end
    function p:IsNWOfCliff() return self.nw; end
    function p:GetDistrictType() return self.district; end
    function p:GetTerrainType() return self.terrain; end
    function p:GetFeatureType() return self.feature; end
    function p:GetResourceType() return self.resource; end
    function p:GetImprovementType() return self.improvement; end
    function p:IsComplete() return self.complete; end
    function p:IsPillaged() return self.pillaged or false; end
    function p:SetPillaged(value)
        self.pillaged=value;
        Events.DistrictPillaged.Fire(self.owner,1,city:GetID(),self.x,self.y,self.district,100,value);
    end
    plots[key(x,y)]=p; byIndex[p.index]=p; return p;
end
local function setup(n,d)
    plots={}; byIndex={}; properties={}; locations={}; pillagedBuildings={};hasTech=true; bankCityNavigable=nil;
    plot(-5,-5,false);
    local v=vectors[d+1];
    local start=plot(-v[1],-v[2],false);
    for i=0,n-1 do plot(i*v[1],i*v[2],true); end
    local finish=plot(n*v[1],n*v[2],false);
    return plots[key(0,0)],start,finish;
end
include("BridgeSpan_DistrictCommon");
local B=BridgeSpanDistrict;
for n=1,3 do for d=0,5 do
    local anchor,start,finish=setup(n,d);
    assert(B.Find(city,anchor,n,d,false));
    start.owner=-1; start.purchaseCity=nil; finish.owner=9; finish.purchaseCity=otherCity;
    assert(B.Find(city,anchor,n,d,false),"neutral/foreign banks rejected");
    for _,bank in ipairs({start,finish}) do
        bank.city=true; bank.purchaseCity=bankCity;
        assert(B.Find(city,anchor,n,d,false),"ordinary city rejected");
        bankCityNavigable=false;
        assert(B.Find(city,anchor,n,d,false));
        bankCityNavigable=true;
        assert(not B.Find(city,anchor,n,d,false),"canal-marked city accepted");
        bankCityNavigable=nil; bank.city=false;
        bank.mountain=true; assert(not B.Find(city,anchor,n,d,false)); bank.mountain=false;
        bank.district=GameInfo.Districts.DISTRICT_CANAL.Index;
        assert(not B.Find(city,anchor,n,d,false)); bank.district=-1;
        bank.water=true; assert(not B.Find(city,anchor,n,d,false)); bank.water=false;
    end
    for i=0,n-1 do
        local v=vectors[d+1]; local water=plots[key(i*v[1],i*v[2])];
        for field,value in pairs({owner=-1,purchaseCity=otherCity,terrain=2,feature=1,
            resource=1,improvement=1,district=GameInfo.Districts.DISTRICT_CANAL.Index}) do
            local old=water[field]; water[field]=value;
            assert(not B.Find(city,anchor,n,d,false),"illegal water accepted: "..field);
            water[field]=old;
        end
    end
    -- Check both physical approach edges, with the engine's cliff storage layout.
    local function cliff(land,water,direction,value)
        local holder=({water,land,land,land,water,water})[direction+1];
        local field=({"ne","w","nw","ne","w","nw"})[direction+1];
        holder[field]=value;
    end
    cliff(start,anchor,d,true); assert(not B.Find(city,anchor,n,d,false)); cliff(start,anchor,d,false);
    local v=vectors[d+1]; local last=plots[key((n-1)*v[1],(n-1)*v[2])];
    cliff(finish,last,(d+3)%6,true); assert(not B.Find(city,anchor,n,d,false));
    cliff(finish,last,(d+3)%6,false);
    hasTech=false; assert(not B.Find(city,anchor,n,d,false)); hasTech=true;
end end
print("PASS: 18 spans/directions, neutral/foreign banks, city canal marks, both cliff edges and water restrictions");

include("BridgeSpan_DistrictGameplay"); B=BridgeSpanDistrict;
for _,directional in ipairs({false,true}) do
    local anchor,start,finish=setup(3,1);
    start.owner=-1; start.purchaseCity=nil;
    finish.city=true; finish.purchaseCity=bankCity;
    local rootName="DISTRICT_BS_BRIDGE_3"..(directional and "_D1" or "");
    anchor.district=GameInfo.Districts[rootName].Index;
    if not directional then
        city:SetProperty(B.PendingKey(anchor.index),{Anchor=anchor.index,Span=3,Direction=1});
    end
    Events.DistrictAddedToMap.Fire(0,1,7,0,0,anchor.district);
    local plan=assert(B.Records(city)[tostring(anchor.index)]);
    assert(not plan.Complete and plan.Direction==1);
    -- Completion of older in-progress plans follows the same path.
    anchor.complete=true;
    Events.DistrictBuildProgressChanged.Fire(0,1,7,0,0,anchor.district);
    assert(plan.Complete);
    for i,index in ipairs(plan.Plots) do
        byIndex[index].complete=true;
        assert(byIndex[index].district==B.District(plan,i).Index);
        local marker=GameInfo.Buildings[B.Marker(plan,i,plan.Slot)].Index;
        assert(locations[marker]==index);
    end
    -- The engine has to reapply crossing components when it reloads a save.
    locations={};
    Events.LoadGameViewStateDone.Fire();
    for i,index in ipairs(plan.Plots) do
        local marker=GameInfo.Buildings[B.Marker(plan,i,plan.Slot)].Index;
        assert(locations[marker]==index,"missing crossing component after reload");
    end
    assert(start.owner==-1 and finish.purchaseCity==bankCity,"bank ownership changed");
end
print("PASS: legacy and directional construction, support attachment, markers and saved crossing restoration");

local anchor,start,finish=setup(1,1);
CityOperationTypes={PARAM_DISTRICT_TYPE="District",BUILD="Build"};
CityOperationResults={PLOTS="Plots"};
CityManager.GetOperationTargets=function() return {Plots={anchor.index}}; end;
start.owner=-1; start.purchaseCity=nil; finish.city=true; finish.purchaseCity=bankCity;
assert(B.VisitPlacements(city,1),"production/placement did not accept new bank rules");
bankCityNavigable=true;
assert(not B.VisitPlacements(city,1),"production/placement accepted a canal-marked city");
print("PASS: production availability and placement use the same revised rules");
