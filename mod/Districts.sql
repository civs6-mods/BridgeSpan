-- City-produced districts. No engineer abilities, gold charges or terrain conversion.
INSERT INTO Types(Type,Kind) VALUES('DISTRICT_BS_BRIDGE_1','KIND_DISTRICT');
INSERT INTO Districts("DistrictType","Name","PrereqTech","PrereqCivic","Coast","Description","Cost","RequiresPlacement","RequiresPopulation","NoAdjacentCity","CityCenter","Aqueduct","InternalOnly","ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain","CostProgressionModel","CostProgressionParam1","TraitType","Appeal","Housing","Entertainment","OnePerCity","AllowsHolyCity","Maintenance","AirSlots","CitizenSlots","TravelTime","CityStrengthModifier","AdjacentToLand","CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer") SELECT 'DISTRICT_BS_BRIDGE_1','LOC_DISTRICT_BS_1_NAME',"PrereqTech",NULL,1,'LOC_DISTRICT_BS_DESCRIPTION',81,"RequiresPlacement",0,0,"CityCenter","Aqueduct",0,"ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain",'NO_COST_PROGRESSION',0,NULL,0,"Housing","Entertainment",0,"AllowsHolyCity",0,"AirSlots","CitizenSlots","TravelTime","CityStrengthModifier",1,"CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer" FROM Districts WHERE DistrictType='DISTRICT_CANAL';
INSERT INTO District_ValidTerrains(DistrictType,TerrainType) VALUES('DISTRICT_BS_BRIDGE_1','TERRAIN_COAST');
INSERT INTO Types(Type,Kind) VALUES('DISTRICT_BS_BRIDGE_2','KIND_DISTRICT');
INSERT INTO Districts("DistrictType","Name","PrereqTech","PrereqCivic","Coast","Description","Cost","RequiresPlacement","RequiresPopulation","NoAdjacentCity","CityCenter","Aqueduct","InternalOnly","ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain","CostProgressionModel","CostProgressionParam1","TraitType","Appeal","Housing","Entertainment","OnePerCity","AllowsHolyCity","Maintenance","AirSlots","CitizenSlots","TravelTime","CityStrengthModifier","AdjacentToLand","CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer") SELECT 'DISTRICT_BS_BRIDGE_2','LOC_DISTRICT_BS_2_NAME',"PrereqTech",NULL,1,'LOC_DISTRICT_BS_DESCRIPTION',162,"RequiresPlacement",0,0,"CityCenter","Aqueduct",0,"ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain",'NO_COST_PROGRESSION',0,NULL,0,"Housing","Entertainment",0,"AllowsHolyCity",0,"AirSlots","CitizenSlots","TravelTime","CityStrengthModifier",1,"CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer" FROM Districts WHERE DistrictType='DISTRICT_CANAL';
INSERT INTO District_ValidTerrains(DistrictType,TerrainType) VALUES('DISTRICT_BS_BRIDGE_2','TERRAIN_COAST');
INSERT INTO Types(Type,Kind) VALUES('DISTRICT_BS_BRIDGE_3','KIND_DISTRICT');
INSERT INTO Districts("DistrictType","Name","PrereqTech","PrereqCivic","Coast","Description","Cost","RequiresPlacement","RequiresPopulation","NoAdjacentCity","CityCenter","Aqueduct","InternalOnly","ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain","CostProgressionModel","CostProgressionParam1","TraitType","Appeal","Housing","Entertainment","OnePerCity","AllowsHolyCity","Maintenance","AirSlots","CitizenSlots","TravelTime","CityStrengthModifier","AdjacentToLand","CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer") SELECT 'DISTRICT_BS_BRIDGE_3','LOC_DISTRICT_BS_3_NAME',"PrereqTech",NULL,1,'LOC_DISTRICT_BS_DESCRIPTION',243,"RequiresPlacement",0,0,"CityCenter","Aqueduct",0,"ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain",'NO_COST_PROGRESSION',0,NULL,0,"Housing","Entertainment",0,"AllowsHolyCity",0,"AirSlots","CitizenSlots","TravelTime","CityStrengthModifier",1,"CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer" FROM Districts WHERE DistrictType='DISTRICT_CANAL';
INSERT INTO District_ValidTerrains(DistrictType,TerrainType) VALUES('DISTRICT_BS_BRIDGE_3','TERRAIN_COAST');
INSERT INTO Types(Type,Kind) VALUES('DISTRICT_BS_SUPPORT_2','KIND_DISTRICT');
INSERT INTO Districts("DistrictType","Name","PrereqTech","PrereqCivic","Coast","Description","Cost","RequiresPlacement","RequiresPopulation","NoAdjacentCity","CityCenter","Aqueduct","InternalOnly","ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain","CostProgressionModel","CostProgressionParam1","TraitType","Appeal","Housing","Entertainment","OnePerCity","AllowsHolyCity","Maintenance","AirSlots","CitizenSlots","TravelTime","CityStrengthModifier","AdjacentToLand","CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer") SELECT 'DISTRICT_BS_SUPPORT_2','LOC_DISTRICT_BS_1_NAME',"PrereqTech",NULL,1,'LOC_DISTRICT_BS_DESCRIPTION',81,"RequiresPlacement",0,0,"CityCenter","Aqueduct",1,"ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain",'NO_COST_PROGRESSION',0,NULL,0,"Housing","Entertainment",0,"AllowsHolyCity",0,"AirSlots","CitizenSlots","TravelTime","CityStrengthModifier",0,"CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer" FROM Districts WHERE DistrictType='DISTRICT_CANAL';
INSERT INTO District_ValidTerrains(DistrictType,TerrainType) VALUES('DISTRICT_BS_SUPPORT_2','TERRAIN_COAST');
INSERT INTO Types(Type,Kind) VALUES('DISTRICT_BS_SUPPORT_3','KIND_DISTRICT');
INSERT INTO Districts("DistrictType","Name","PrereqTech","PrereqCivic","Coast","Description","Cost","RequiresPlacement","RequiresPopulation","NoAdjacentCity","CityCenter","Aqueduct","InternalOnly","ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain","CostProgressionModel","CostProgressionParam1","TraitType","Appeal","Housing","Entertainment","OnePerCity","AllowsHolyCity","Maintenance","AirSlots","CitizenSlots","TravelTime","CityStrengthModifier","AdjacentToLand","CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer") SELECT 'DISTRICT_BS_SUPPORT_3','LOC_DISTRICT_BS_1_NAME',"PrereqTech",NULL,1,'LOC_DISTRICT_BS_DESCRIPTION',81,"RequiresPlacement",0,0,"CityCenter","Aqueduct",1,"ZOC","FreeEmbark","HitPoints","CaptureRemovesBuildings","CaptureRemovesCityDefenses","PlunderType","PlunderAmount","TradeEmbark","MilitaryDomain",'NO_COST_PROGRESSION',0,NULL,0,"Housing","Entertainment",0,"AllowsHolyCity",0,"AirSlots","CitizenSlots","TravelTime","CityStrengthModifier",0,"CanAttack","AdvisorType","CaptureRemovesDistrict","MaxPerPlayer" FROM Districts WHERE DistrictType='DISTRICT_CANAL';
INSERT INTO District_ValidTerrains(DistrictType,TerrainType) VALUES('DISTRICT_BS_SUPPORT_3','TERRAIN_COAST');

UPDATE Districts SET Description='LOC_DISTRICT_BS_SEA_DESCRIPTION' WHERE DistrictType IN ('DISTRICT_BS_BRIDGE_2','DISTRICT_BS_BRIDGE_3');

-- Native repairs reject InternalOnly districts. A zero construction limit
-- blocks new support starts while still permitting repairs of existing tiles.
UPDATE Districts SET InternalOnly=0,MaxPerPlayer=0,
  Name='LOC_DISTRICT_BS_2_NAME',Description='LOC_DISTRICT_BS_SEA_DESCRIPTION'
  WHERE DistrictType IN ('DISTRICT_BS_SUPPORT_2','DISTRICT_BS_SUPPORT_3');

-- A city can hold a building type once. Reserve one crossing marker per
-- tile ordinal and city slot. Direction and damage are district art states.
CREATE TEMP TABLE BS_ComponentSlots (Slot INTEGER PRIMARY KEY);
WITH RECURSIVE Slots(Slot) AS (
    SELECT 1 UNION ALL SELECT Slot + 1 FROM Slots WHERE Slot < 36
)
INSERT INTO BS_ComponentSlots SELECT Slot FROM Slots;
CREATE TEMP TABLE BS_CrossingMarkers (Type TEXT PRIMARY KEY);
INSERT INTO BS_CrossingMarkers
SELECT 'BUILDING_BS_TILE_' || Ordinal || '_S' || Slot
FROM (SELECT 1 AS Ordinal UNION ALL SELECT 2 UNION ALL SELECT 3), BS_ComponentSlots;
INSERT INTO Types(Type,Kind) SELECT Type,'KIND_BUILDING' FROM BS_CrossingMarkers;
INSERT INTO Buildings(BuildingType,Name,Description,Cost,InternalOnly)
SELECT Type,'LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION',1,1 FROM BS_CrossingMarkers;
INSERT INTO Buildings_XP2(BuildingType,Bridge) SELECT Type,1 FROM BS_CrossingMarkers;
INSERT INTO BuildingModifiers(BuildingType,ModifierId)
SELECT Type,ModifierId FROM BS_CrossingMarkers CROSS JOIN BuildingModifiers
WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId='GOLDENGATE_GRANT_ROUTES';
DROP TABLE BS_CrossingMarkers;
DROP TABLE BS_ComponentSlots;
