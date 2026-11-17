-- Included in gameplay after the native district/component synchronization.
-- A damaged asset replaces the existing root component; it adds no pillage target.
function BridgeSpanInitializeDamage(B,SegmentAt,Remember,SetBusy,IsBusy)
local function SaveAppearance(city,plan,mask)
    local records=B.Records(city);
    local current=records[tostring(plan.Anchor)];
    if current then current.ArtMask=mask;city:SetProperty(B.Key,records);Remember(city,current);end
    plan.ArtMask=mask;
end

local function SyncAppearance(city,plan)
    if not plan.Complete then return;end
    local plot,district,old=SegmentAt(city,plan,1);
    if not plot or not old then return;end
    local mask=B.DamageMask(city,plan);
    if mask~=(plan.ArtMask or 0) then
        local copy={};for k,v in pairs(plan)do copy[k]=v;end;copy.ArtMask=mask;
        local new=GameInfo.Buildings[B.Marker(copy,1,copy.Slot or 1)];
        assert(new,"Missing damaged bridge asset type");
        local buildings=city:GetBuildings();
        local damaged=district:IsPillaged();
        SetBusy(true);
        local ok,err=pcall(function()
            if buildings:HasBuilding(old.Index)then buildings:RemoveBuilding(old.Index);end
            city:GetBuildQueue():CreateIncompleteBuilding(new.Index,plot:GetIndex(),100);
            assert(buildings:GetBuildingLocation(new.Index)==plot:GetIndex(),"Damaged bridge misplaced");
            if damaged then buildings:SetPillaged(new.Index,true);end
            SaveAppearance(city,plan,mask);
        end);
        SetBusy(false);
        if not ok then error(err);end
    end
end

local function SyncRepairPermit(city,plan)
    local row=GameInfo.Buildings[B.RepairPermit(plan)];
    if not row then return;end
    local buildings=city:GetBuildings();
    local damaged=plan.Complete and B.DamageMask(city,plan)>0;
    if damaged then
        for segment in ipairs(plan.Plots)do if not SegmentAt(city,plan,segment)then damaged=false;break;end end
    end
    local key="BS_RepairTarget:"..B.RepairProject(plan);
    if damaged then
        -- Keep the native project city-specific. The internal permit lives in
        -- the city center, never on a bridge and has no graphics or bridge flag.
        if not buildings:HasBuilding(row.Index) then
            city:GetBuildQueue():CreateIncompleteBuilding(row.Index,Map.GetPlot(city:GetX(),city:GetY()):GetIndex(),100);
        end
        city:SetProperty(key,plan.Anchor);
    else
        if buildings:HasBuilding(row.Index)then buildings:RemoveBuilding(row.Index);end
        city:SetProperty(key,nil);
    end
end

local function SyncBridgeDamage(city,plan)
    SyncAppearance(city,plan);
    SyncRepairPermit(city,plan);
end;

local function ProjectCompleted(owner,cityID,projectID)
    if IsBusy() or GameConfiguration.IsAnyMultiplayer()then return;end
    local project=GameInfo.Projects[projectID];
    if not project or not project.ProjectType:match("^PROJECT_BS_REPAIR_")then return;end
    local player=Players[owner];local city=player and player:GetCities():FindID(cityID);
    if not city then return;end
    local anchor=city:GetProperty("BS_RepairTarget:"..project.ProjectType);
    local plan=anchor and B.Records(city)[tostring(anchor)];
    if not plan or not plan.Complete or B.RepairProject(plan)~=project.ProjectType then return;end
    -- Validate every tile before changing any of them. Removed or transferred
    -- structures must not repair a different bridge sharing a support type.
    for segment in ipairs(plan.Plots)do if not SegmentAt(city,plan,segment)then return;end end
    SetBusy(true);
    local ok,err=pcall(function()
        local buildings=city:GetBuildings();
        for segment in ipairs(plan.Plots)do
            local plot,district,marker=SegmentAt(city,plan,segment);
            if district:IsPillaged()then district:SetPillaged(false);end
            if buildings:HasBuilding(marker.Index)then buildings:RemoveBuilding(marker.Index);end
            city:GetBuildQueue():CreateIncompleteBuilding(marker.Index,plot:GetIndex(),100);
        end
    end);
    SetBusy(false);
    if not ok then print("[BridgeSpanDistrict] Whole bridge repair error",tostring(err));return;end
    SyncBridgeDamage(city,plan);
    print("[BridgeSpanDistrict] Repaired whole bridge",owner,cityID,plan.Anchor,plan.Span);
end
Events.CityProjectCompleted.Add(ProjectCompleted);
return SyncBridgeDamage;
end
