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
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S2','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S2','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S2','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S2','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S2','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S2','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S2','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S2','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S2','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S2','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S2','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S2','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S2','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S2','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S2',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S2',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S3','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S3','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S3','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S3','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S3','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S3','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S3','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S3','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S3','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S3','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S3','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S3','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S3','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S3','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S3',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S3',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S4','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S4','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S4','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S4','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S4','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S4','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S4','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S4','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S4','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S4','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S4','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S4','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S4','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S4','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S4','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S4','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S4','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S4','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S4','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S4','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S4','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S4',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S4',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S5','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S5','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S5','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S5','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S5','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S5','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S5','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S5','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S5','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S5','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S5','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S5','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S5','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S5','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S5','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S5','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S5','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S5','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S5','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S5','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S5','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S5',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S5',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S6','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S6','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S6','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S6','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S6','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S6','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S6','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S6','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S6','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S6','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S6','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S6','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S6','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S6','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S6','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S6','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S6','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S6','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S6','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S6','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S6','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S6',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S6',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S7','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S7','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S7','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S7','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S7','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S7','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S7','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S7','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S7','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S7','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S7','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S7','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S7','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S7','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S7','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S7','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S7','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S7','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S7','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S7','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S7','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S7',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S7',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S8','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S8','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S8','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S8','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S8','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S8','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S8','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S8','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S8','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S8','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S8','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S8','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S8','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S8','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S8','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S8','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S8','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S8','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S8','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S8','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S8','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S8',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S8',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S9','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S9','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S9','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S9','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S9','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S9','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S9','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S9','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S9','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S9','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S9','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S9','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S9','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S9','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S9','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S9','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S9','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S9','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S9','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S9','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S9','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S9',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S9',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S10','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S10','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S10','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S10','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S10','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S10','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S10','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S10','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S10','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S10','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S10','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S10','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S10','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S10','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S10','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S10','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S10','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S10','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S10','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S10','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S10','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S10',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S10',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S11','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S11','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S11','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S11','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S11','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S11','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S11','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S11','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S11','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S11','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S11','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S11','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S11','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S11','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S11','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S11','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S11','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S11','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S11','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S11','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S11','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S11',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S11',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S12','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S12','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S12','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S12','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S12','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S12','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S12','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S12','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S12','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S12','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S12','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S12','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S12','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S12','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S12','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S12','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S12','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S12','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S12','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S12','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S12','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S12',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S12',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S13','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S13','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S13','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S13','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S13','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S13','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S13','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S13','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S13','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S13','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S13','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S13','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S13','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S13','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S13','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S13','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S13','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S13','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S13','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S13','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S13','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S13',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S13',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S14','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S14','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S14','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S14','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S14','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S14','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S14','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S14','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S14','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S14','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S14','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S14','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S14','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S14','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S14','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S14','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S14','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S14','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S14','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S14','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S14','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S14',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S14',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S15','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S15','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S15','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S15','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S15','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S15','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S15','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S15','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S15','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S15','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S15','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S15','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S15','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S15','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S15','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S15','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S15','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S15','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S15','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S15','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S15','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S15',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S15',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S16','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S16','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S16','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S16','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S16','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S16','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S16','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S16','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S16','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S16','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S16','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S16','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S16','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S16','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S16','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S16','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S16','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S16','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S16','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S16','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S16','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S16',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S16',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S17','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S17','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S17','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S17','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S17','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S17','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S17','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S17','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S17','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S17','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S17','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S17','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S17','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S17','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S17','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S17','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S17','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S17','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S17','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S17','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S17','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S17',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S17',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S18','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S18','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S18','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S18','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S18','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S18','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S18','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S18','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S18','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S18','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S18','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S18','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S18','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S18','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S18','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S18','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S18','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S18','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S18','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S18','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S18','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S18',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S18',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S19','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S19','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S19','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S19','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S19','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S19','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S19','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S19','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S19','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S19','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S19','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S19','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S19','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S19','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S19','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S19','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S19','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S19','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S19','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S19','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S19','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S19',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S19',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S20','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S20','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S20','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S20','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S20','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S20','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S20','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S20','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S20','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S20','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S20','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S20','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S20','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S20','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S20','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S20','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S20','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S20','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S20','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S20','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S20','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S20',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S20',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S21','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S21','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S21','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S21','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S21','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S21','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S21','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S21','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S21','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S21','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S21','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S21','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S21','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S21','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S21','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S21','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S21','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S21','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S21','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S21','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S21','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S21',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S21',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S22','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S22','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S22','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S22','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S22','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S22','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S22','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S22','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S22','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S22','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S22','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S22','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S22','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S22','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S22','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S22','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S22','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S22','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S22','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S22','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S22','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S22',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S22',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S23','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S23','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S23','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S23','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S23','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S23','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S23','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S23','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S23','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S23','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S23','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S23','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S23','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S23','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S23','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S23','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S23','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S23','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S23','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S23','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S23','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S23',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S23',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S24','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S24','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S24','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S24','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S24','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S24','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S24','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S24','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S24','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S24','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S24','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S24','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S24','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S24','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S24','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S24','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S24','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S24','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S24','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S24','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S24','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S24',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S24',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S25','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S25','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S25','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S25','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S25','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S25','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S25','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S25','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S25','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S25','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S25','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S25','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S25','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S25','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S25','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S25','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S25','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S25','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S25','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S25','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S25','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S25',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S25',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S26','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S26','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S26','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S26','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S26','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S26','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S26','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S26','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S26','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S26','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S26','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S26','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S26','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S26','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S26','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S26','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S26','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S26','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S26','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S26','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S26','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S26',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S26',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S27','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S27','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S27','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S27','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S27','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S27','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S27','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S27','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S27','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S27','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S27','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S27','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S27','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S27','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S27','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S27','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S27','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S27','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S27','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S27','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S27','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S27',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S27',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S28','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S28','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S28','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S28','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S28','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S28','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S28','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S28','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S28','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S28','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S28','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S28','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S28','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S28','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S28','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S28','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S28','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S28','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S28','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S28','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S28','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S28',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S28',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S29','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S29','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S29','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S29','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S29','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S29','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S29','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S29','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S29','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S29','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S29','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S29','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S29','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S29','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S29','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S29','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S29','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S29','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S29','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S29','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S29','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S29',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S29',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S30','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S30','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S30','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S30','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S30','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S30','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S30','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S30','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S30','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S30','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S30','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S30','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S30','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S30','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S30','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S30','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S30','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S30','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S30','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S30','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S30','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S30',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S30',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S31','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S31','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S31','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S31','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S31','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S31','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S31','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S31','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S31','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S31','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S31','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S31','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S31','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S31','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S31','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S31','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S31','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S31','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S31','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S31','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S31','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S31',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S31',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S32','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S32','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S32','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S32','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S32','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S32','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S32','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S32','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S32','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S32','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S32','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S32','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S32','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S32','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S32','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S32','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S32','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S32','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S32','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S32','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S32','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S32',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S32',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S33','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S33','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S33','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S33','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S33','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S33','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S33','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S33','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S33','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S33','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S33','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S33','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S33','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S33','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S33','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S33','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S33','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S33','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S33','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S33','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S33','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S33',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S33',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S34','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S34','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S34','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S34','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S34','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S34','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S34','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S34','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S34','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S34','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S34','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S34','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S34','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S34','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S34','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S34','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S34','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S34','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S34','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S34','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S34','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S34',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S34',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S35','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S35','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S35','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S35','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S35','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S35','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S35','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S35','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S35','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S35','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S35','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S35','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S35','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S35','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S35','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S35','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S35','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S35','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S35','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S35','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S35','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S35',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S35',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_0_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_0_S36','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_0_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_0_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_1_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_1_S36','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_1_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_1_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_2_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_2_S36','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_2_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_2_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_3_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_3_S36','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_3_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_3_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_4_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_4_S36','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_4_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_4_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_1_5_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_1_5_S36','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_1',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_1_5_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_1_5_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_0_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_0_S36','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_0_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_0_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_1_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_1_S36','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_1_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_1_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_2_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_2_S36','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_2_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_2_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_3_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_3_S36','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_3_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_3_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_4_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_4_S36','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_4_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_4_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_2_5_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_2_5_S36','LOC_DISTRICT_BS_2_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_2_5_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_2_5_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_0_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_0_S36','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_0_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_0_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_1_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_1_S36','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_1_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_1_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_2_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_2_S36','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_2_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_2_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_3_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_3_S36','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_3_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_3_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_4_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_4_S36','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_4_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_4_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_DECK_3_5_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_DECK_3_5_S36','LOC_DISTRICT_BS_3_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_BRIDGE_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_DECK_3_5_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_DECK_3_5_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_2_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_2_S36','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_2',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_2_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_2_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');
INSERT INTO Types(Type,Kind) VALUES('BUILDING_BS_SUPPORT_3_S36','KIND_BUILDING');
INSERT INTO Buildings(BuildingType,Name,Description,PrereqDistrict,Cost,RequiresPlacement,InternalOnly,IsWonder,AdvisorType)
VALUES('BUILDING_BS_SUPPORT_3_S36','LOC_DISTRICT_BS_1_NAME','LOC_DISTRICT_BS_DESCRIPTION','DISTRICT_BS_SUPPORT_3',1,0,1,0,'ADVISOR_GENERIC');
INSERT INTO Buildings_XP2(BuildingType,Bridge) VALUES('BUILDING_BS_SUPPORT_3_S36',1);
INSERT INTO BuildingModifiers SELECT 'BUILDING_BS_SUPPORT_3_S36',ModifierId FROM BuildingModifiers WHERE BuildingType='BUILDING_GOLDEN_GATE_BRIDGE' AND ModifierId IN ('GOLDENGATE_GRANT_ROUTES','GOLDENGATE_REMOVE_CLIFFS');

UPDATE Districts SET Description='LOC_DISTRICT_BS_SEA_DESCRIPTION' WHERE DistrictType IN ('DISTRICT_BS_BRIDGE_2','DISTRICT_BS_BRIDGE_3');

-- District bridgeheads use the direction from their saved bridge plan.
DELETE FROM BuildingModifiers WHERE ModifierId='GOLDENGATE_REMOVE_CLIFFS'
  AND (BuildingType GLOB 'BUILDING_BS_DECK_*' OR BuildingType GLOB 'BUILDING_BS_SUPPORT_*');
