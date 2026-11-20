include("BridgeSpan_DistrictCommon");
local B=BridgeSpanDistrict;
local busy=false;
-- City transfer rebuilds the city object and drops its Lua properties before
-- DistrictAddedToMap. Keep plans by map anchor for that same-session handoff.
-- Normal saves continue to use city properties; this cache starts fresh on load.
local knownPlans={};

local function Remember(city,plan)
    local copy={};
    for k,v in pairs(plan) do copy[k]=v; end
    copy.Plots={};
    for i,index in ipairs(plan.Plots) do copy.Plots[i]=index; end
    copy.Owner=city:GetOwner(); copy.CityID=city:GetID();
    knownPlans[tostring(plan.Anchor)]=copy;
end

local function AdoptExisting(city)
    local records=B.Records(city);
    local changed=false;
    for key,plan in pairs(knownPlans) do
        local root=Map.GetPlotByIndex(plan.Anchor);
        if not records[key] and (plan.Owner~=city:GetOwner() or plan.CityID~=city:GetID())
            and B.BelongsToCity(root,city)
            and root:GetDistrictType()==B.District(plan,1).Index then
            local adopted={};
            for k,v in pairs(plan) do adopted[k]=v; end
            adopted.Owner=city:GetOwner(); adopted.CityID=city:GetID();
            records[key]=adopted; changed=true;
            print("[BridgeSpanDistrict] Adopted transferred bridge",adopted.Owner,adopted.CityID,adopted.Anchor);
        end
    end
    if changed then city:SetProperty(B.Key,records); end
    for _,plan in pairs(records) do Remember(city,plan); end
end

-- Each healthy bridge tile owns one native crossing component.
local damageBusy=false;
local function SegmentAt(city,plan,segment)
    local plot=Map.GetPlotByIndex(plan.Plots[segment]);
    local district=plot and CityManager.GetDistrictAt(plot);
    if not plan.Complete or not B.BelongsToCity(plot,city) or not district
        or plot:GetDistrictType()~=B.District(plan,segment).Index then return; end
    return plot,district,GameInfo.Buildings[B.Marker(plan,segment,plan.Slot or 1)];
end
-- Only a real pillage awards loot. Setting the sibling districts' flags and
-- removing their crossing components changes map state without a unit action.
local function SetBridgeDamage(city,plan,pillaged,reload)
    if damageBusy then return 0; end
    damageBusy=true;
    local ok,count=pcall(function()
        local buildings=city:GetBuildings();
        local repaired=0;
        for i,index in ipairs(plan.Plots) do
            local plot,district,marker=SegmentAt(city,plan,i);
            if plot and marker then
                local location=buildings:GetBuildingLocation(marker.Index);
                if district:IsPillaged()~=pillaged then district:SetPillaged(pillaged); end
                if location==index and (pillaged or reload or buildings:IsPillaged(marker.Index)) then
                    buildings:RemoveBuilding(marker.Index);
                end
                if not pillaged and not buildings:HasBuilding(marker.Index) then
                    city:GetBuildQueue():CreateIncompleteBuilding(marker.Index,index,100);
                    assert(buildings:GetBuildingLocation(marker.Index)==index,"Bridge crossing restored on wrong tile");
                    repaired=repaired+1;
                end
            end
        end
        local records=B.Records(city);
        local current=records[tostring(plan.Anchor)];
        if current and current.Pillaged~=pillaged then
            current.Pillaged=pillaged;
            city:SetProperty(B.Key,records);
            Remember(city,current);
        end
        return repaired;
    end);
    damageBusy=false;
    if not ok then error(count); end
    return count;
end

local function BuildingDamageChanged(owner,cityID,buildingType,pillaged)
    if busy or damageBusy or GameConfiguration.IsAnyMultiplayer() or not (pillaged==true or pillaged==1) then return; end
    local row=GameInfo.Buildings[buildingType];
    if not row or not row.BuildingType then return; end
    local segment,slot=row.BuildingType:match("^BUILDING_BS_TILE_(%d+)_S(%d+)$");
    if not segment then return; end
    slot=tonumber(slot);
    local player=Players[owner]; local city=player and player:GetCities():FindID(cityID);
    if not city then return; end
    for _,plan in pairs(B.Records(city)) do
        if (plan.Slot or 1)==slot and plan.Plots[tonumber(segment)] and SegmentAt(city,plan,tonumber(segment)) then
            SetBridgeDamage(city,plan,true);
            return;
        end
    end
end

local function DistrictDamageChanged(owner,districtID,cityID,x,y)
    if busy or damageBusy or GameConfiguration.IsAnyMultiplayer() then return; end
    local plot=Map.GetPlot(x,y);
    local row=plot and GameInfo.Districts[plot:GetDistrictType()];
    if not row or not row.DistrictType:match("^DISTRICT_BS_") then return; end
    local player=Players[owner]; local city=player and player:GetCities():FindID(cityID);
    if not city then return; end
    for _,plan in pairs(B.Records(city)) do
        for segment,index in ipairs(plan.Plots) do
            if index==plot:GetIndex() then
                local _,district=SegmentAt(city,plan,segment);
                if district then
                    -- Only the visible root district can complete a whole repair.
                    local damaged=district:IsPillaged() or (segment~=1 and plan.Pillaged==true);
                    if plan.Pillaged~=damaged or district:IsPillaged()~=damaged then
                        SetBridgeDamage(city,plan,damaged);
                    end
                end
                return;
            end
        end
    end
end

local function Prepare(owner,request)
    if type(request)~="table" or GameConfiguration.IsAnyMultiplayer() then return; end
    local player=Players[owner];
    if not player or not player:IsHuman() or not player:IsTurnActive() then return; end
    local city=player:GetCities():FindID(request.CityID);
    local anchor=Map.GetPlotByIndex(request.Anchor or -1);
    local plan=B.Find(city,anchor,request.Span,request.Direction,false);
    if plan then city:SetProperty(B.PendingKey(plan.Anchor),plan); end
end
GameEvents.BridgeSpan_DistrictPlan.Add(Prepare);

local function AllocateSlot(city,plan,records)
    local used={};
    for _,existing in pairs(records) do
        local root=Map.GetPlotByIndex(existing.Anchor);
        if B.BelongsToCity(root,city) and root:GetDistrictType()==B.District(existing,1).Index then
            used[existing.Slot or 1]=true;
        end
    end
    local buildings=city:GetBuildings();
    local slot=1;
    while GameInfo.Buildings[B.Marker(plan,1,slot)] do
        local free=not used[slot];
        if free then
            for i=1,plan.Span do
                local marker=GameInfo.Buildings[B.Marker(plan,i,slot)];
                if buildings:HasBuilding(marker.Index) then free=false; break; end
            end
        end
        if free then return slot; end
        slot=slot+1;
    end
end

local function AttachSupports(city,plan)
    for i=2,plan.Span do
        local plot=Map.GetPlotByIndex(plan.Plots[i]);
        local district=plot and plot:GetDistrictType();
        if not plot or not plot:IsWater() or not B.BelongsToCity(plot,city)
            or (district~=-1 and district~=B.District(plan,i).Index) then return false; end
        if district==-1 then
            local approved=plan.Clearance and plan.Clearance[tostring(plot:GetIndex())];
            -- Older saves reserved empty support tiles. Never remove a later,
            -- unconfirmed improvement or a newly appeared feature.
            local feature=approved and approved.Feature or -1;
            local improvement=approved and approved.Improvement or -1;
            if plot:GetFeatureType()~=feature or plot:GetImprovementType()~=improvement
                or plot:GetResourceType()~=-1 or not B.CanClearPlot(city,plot,B.District(plan,i)) then return false;end
        end
    end
    for i=2,plan.Span do
        local index=plan.Plots[i];
        local plot=Map.GetPlotByIndex(index);
        local district=B.District(plan,i).Index;
        assert(plot and plot:IsWater() and B.BelongsToCity(plot,city),"Bridge water plot changed");
        if plot:GetDistrictType()==-1 then
            -- All support tiles have passed validation before any clearance.
            -- District placement removes these without builder harvest yields.
            if plot:GetImprovementType()~=-1 then ImprovementBuilder.SetImprovementType(plot,-1,city:GetOwner());end
            if plot:GetFeatureType()~=-1 then TerrainBuilder.SetFeatureType(plot,-1);end
            city:GetBuildQueue():CreateIncompleteDistrict(district,index,100);
        end
        assert(plot:GetDistrictType()==district,"Bridge support did not attach to water plot");
    end
    return true;
end

local function Mark(city,plan)
    local buildings=city:GetBuildings();
    for i,index in ipairs(plan.Plots) do
        local plot=Map.GetPlotByIndex(index);
        local district=B.District(plan,i).Index;
        assert(plot and plot:IsWater() and B.BelongsToCity(plot,city)
            and plot:GetDistrictType()==district,"Bridge reservation changed");
        local building=GameInfo.Buildings[B.Marker(plan,i,plan.Slot or 1)];
        if not buildings:HasBuilding(building.Index) then
            city:GetBuildQueue():CreateIncompleteBuilding(building.Index,index,100);
        end
        assert(buildings:GetBuildingLocation(building.Index)==index
            and plot:GetDistrictType()==district,"Bridge marker did not attach to district");
    end
end

-- The old saves carry the bridge identity and tile list in a city property.
-- Upgrade only tiles that still belonged to that bridge. A support removed
-- before saving must remain absent. Persist the repair state before replacing
-- an old district so interrupted conversions can resume at the same plot.
local function UpgradeTiles(city,plan)
    if not plan.Complete or plan.TileArt then return; end
    local records=B.Records(city);
    local key=tostring(plan.Anchor);
    local function save()
        records[key]=plan;
        city:SetProperty(B.Key,records);
        Remember(city,plan);
    end
    if not plan.TileUpgrade then
        local tiles={};
        for i,index in ipairs(plan.Plots) do
            local plot=Map.GetPlotByIndex(index);
            local district=plot and CityManager.GetDistrictAt(plot);
            if district and B.BelongsToCity(plot,city) and plot:GetDistrictType()==B.District(plan,i).Index then
                tiles[tostring(i)]={Pillaged=district:IsPillaged()};
            end
        end
        if not tiles["1"] then return; end
        plan.TileUpgrade=tiles;
        save();
    end
    local buildings=city:GetBuildings();
    local queue=city:GetBuildQueue();
    for i,index in ipairs(plan.Plots) do
        local tile=plan.TileUpgrade[tostring(i)];
        if tile then
            local plot=Map.GetPlotByIndex(index);
            assert(B.BelongsToCity(plot,city),"Saved bridge tile has changed ownership");
            local old=B.District(plan,i).Index;
            local target=i==1 and B.PlacementDistrict(plan) or GameInfo.Districts[B.SupportName(plan.Span,plan.Direction,i)];
            if plot:GetDistrictType()~=target.Index then
                if plot:GetDistrictType()==old then
                    CityManager.DestroyDistrict(CityManager.GetDistrictAt(plot));
                end
                assert(plot:GetDistrictType()==-1,"Saved bridge tile occupied by a different district");
                queue:CreateIncompleteDistrict(target.Index,index,100);
            end
            assert(plot:GetDistrictType()==target.Index,"Saved bridge district was misplaced");
            local marker=GameInfo.Buildings[B.Marker(plan,i,plan.Slot or 1)];
            if buildings:GetBuildingLocation(marker.Index)~=index then
                assert(not buildings:HasBuilding(marker.Index),"Saved bridge slot is already occupied");
                queue:CreateIncompleteBuilding(marker.Index,index,100);
            end
            assert(buildings:GetBuildingLocation(marker.Index)==index,"Saved bridge component was misplaced");
            if tile.Pillaged then
                CityManager.GetDistrictAt(plot):SetPillaged(true);
                buildings:SetPillaged(marker.Index,true);
            end
        end
    end
    plan.TileArt=true;
    plan.Root=B.PlacementDistrict(plan).DistrictType;
    plan.TileUpgrade=nil;
    save();
end

local function Added(owner,districtID,cityID,x,y,districtType)
    local span,direction=B.Length(districtType);
    if busy or not span then return; end
    local player=Players[owner];
    local city=player and player:GetCities():FindID(cityID);
    local anchor=Map.GetPlot(x,y);
    if not city or not anchor or anchor:GetDistrictType()~=districtType then return; end
    local anchorIndex=anchor:GetIndex();
    local key=tostring(anchorIndex);
    busy=true;
    local ok,err=pcall(function()
        local records=B.Records(city);
        local plan=records[key];
        if not plan and knownPlans[key] then
            AdoptExisting(city);
            records=B.Records(city); plan=records[key];
        end
        if not plan then
            local pendingKey=B.PendingKey(anchorIndex);
            local pending=city:GetProperty(pendingKey) or city:GetProperty(B.LegacyPendingKey);
            if direction then
                plan=B.Find(city,anchor,span,direction,true);
            elseif pending and pending.Anchor==anchorIndex and pending.Span==span then
                plan=B.Find(city,anchor,span,pending.Direction,true);
            end
            if not plan and not direction then plan=B.Options(city,anchor,span,true)[1]; end
            city:SetProperty(pendingKey,nil);
            if pending and pending.Anchor==anchorIndex then city:SetProperty(B.LegacyPendingKey,nil); end
            if plan then plan.Slot=AllocateSlot(city,plan,records); end
            if not plan or not plan.Slot then
                local district=CityManager.GetDistrictAt(anchor);
                if district then CityManager.DestroyDistrict(district); end
                print("[BridgeSpanDistrict] Rejected span or marker capacity",owner,cityID,x,y);
                return;
            end
            records[key]=plan;
            city:SetProperty(B.Key,records);
            Remember(city,plan);
            print("[BridgeSpanDistrict] Reserved",owner,cityID,span,plan.Direction,anchorIndex,plan.Slot);
        end
        if plan.Complete then return; end
        local root=CityManager.GetDistrictAt(anchor);
        if root and root:IsComplete() then
            -- Creating a district during placement interrupts the native build operation.
            -- The saved plan reserves this bridge's span until the root is complete.
            if not AttachSupports(city,plan) then
                records[key]=nil;
                knownPlans[key]=nil;
                city:SetProperty(B.Key,records);
                local district=CityManager.GetDistrictAt(anchor);
                if district then CityManager.DestroyDistrict(district); end
                print("[BridgeSpanDistrict] Rejected span changed during construction",owner,cityID,x,y);
                return;
            end
            Mark(city,plan);
            plan.Complete=true;
            city:SetProperty(B.Key,records);
            Remember(city,plan);
            UpgradeTiles(city,plan);
            print("[BridgeSpanDistrict] Completed",owner,cityID,span,plan.Direction,anchorIndex,plan.Slot or 1);
        end
    end);
    busy=false;
    if not ok then print("[BridgeSpanDistrict] ERROR",tostring(err)); end
end

local function Removed(owner,districtID,cityID,x,y,districtType)
    if busy or not B.Length(districtType) then return; end
    local player=Players[owner];
    local city=player and player:GetCities():FindID(cityID);
    local anchor=Map.GetPlot(x,y);
    -- Transfer emits removal for the old city while the same district already
    -- belongs to its new owner. This is not demolition.
    if anchor and anchor:GetDistrictType()==districtType then return; end
    if not anchor then return; end
    local key=tostring(anchor:GetIndex());
    local records=city and B.Records(city);
    local plan=records and records[key];
    -- Upgrading a legacy root replaces it on the same plot. The engine may
    -- deliver its removal after the replacement has already been completed.
    local previous=plan or knownPlans[key];
    if previous and districtType==GameInfo.Districts["DISTRICT_BS_BRIDGE_"..previous.Span].Index
        and anchor:GetDistrictType()==B.PlacementDistrict(previous).Index then return; end
    knownPlans[key]=nil;
    if not plan then return; end
    records[key]=nil;
    city:SetProperty(B.Key,records);
    for i=2,plan.Span do
        local plot=Map.GetPlotByIndex(plan.Plots[i]);
        if B.BelongsToCity(plot,city) and plot:GetDistrictType()==B.District(plan,i).Index then
            local district=CityManager.GetDistrictAt(plot);
            if district then CityManager.DestroyDistrict(district); end
        end
    end
end

local function RestoreBridge(city,plan)
    local wasBusy,wasDamageBusy=busy,damageBusy;
    busy=true;damageBusy=true;
    local ok,err=pcall(UpgradeTiles,city,plan);
    busy=wasBusy;damageBusy=wasDamageBusy;
    if not ok then error(err); end
    -- Earlier versions stored partial tile damage and, on some saves, only the
    -- native building carried the pillage flag. Adopt either as one broken bridge.
    local damaged=plan.Pillaged==true;
    local buildings=city:GetBuildings();
    for i in ipairs(plan.Plots) do
        local plot,district,marker=SegmentAt(city,plan,i);
        if plot and (district:IsPillaged() or marker and buildings:IsPillaged(marker.Index)) then damaged=true; break; end
    end
    return SetBridgeDamage(city,plan,damaged,true);
end

local function RestoreOnLoad()
    if GameConfiguration.IsAnyMultiplayer() then return; end
    local restored=0;
    for _,player in ipairs(PlayerManager.GetAlive()) do
        for _,city in player:GetCities():Members() do
            for _,plan in pairs(B.Records(city)) do
                Remember(city,plan);
                if plan.Complete then
                    local ok,result=pcall(RestoreBridge,city,plan);
                    if ok then
                        restored=restored+result;
                    else
                        print("[BridgeSpanDistrict] Bridge reload error",city:GetID(),plan.Anchor,tostring(result));
                    end
                end
            end
        end
    end
    if restored>0 then print("[BridgeSpanDistrict] Restored bridge crossing after load",restored); end
end

local function CityAdded(owner,cityID)
    local player=Players[owner];
    local city=player and player:GetCities():FindID(cityID);
    if city then AdoptExisting(city); end
end

local function Transferred(owner,cityID)
    local player=Players[owner];
    local city=player and player:GetCities():FindID(cityID);
    if city then
        AdoptExisting(city);
        for _,plan in pairs(B.Records(city)) do
            if plan.Complete then
                local ok,err=pcall(RestoreBridge,city,plan);
                if not ok then print("[BridgeSpanDistrict] Transfer restore error",cityID,plan.Anchor,tostring(err)); end
            end
        end
    end
end

Events.DistrictAddedToMap.Add(Added);
Events.DistrictBuildProgressChanged.Add(Added);
Events.DistrictRemovedFromMap.Add(Removed);
Events.LoadGameViewStateDone.Add(RestoreOnLoad);
Events.DistrictPillaged.Add(DistrictDamageChanged);
GameEvents.BuildingPillageStateChanged.Add(BuildingDamageChanged);
Events.CityAddedToMap.Add(CityAdded);
Events.CityTransfered.Add(Transferred);
print("[BridgeSpanDistrict] Multiple city bridges enabled");
