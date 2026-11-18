INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_1_D0', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_1';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_1_D1', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_1';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_1_D2', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_1';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_1_D3', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_1';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_1_D4', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_1';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_1_D5', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_1';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_2_D0', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_2';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_2_D1', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_2';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_2_D2', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_2';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_2_D3', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_2';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_2_D4', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_2';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_2_D5', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_2';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_3_D0', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_3';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_3_D1', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_3';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_3_D2', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_3';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_3_D3', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_3';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_3_D4', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_3';
INSERT INTO IconDefinitions (Name, Atlas, "Index") SELECT 'ICON_DISTRICT_BS_BRIDGE_3_D5', Atlas, "Index" FROM IconDefinitions WHERE Name = 'ICON_DISTRICT_BS_BRIDGE_3';

-- Oriented support districts use the same icon as their original segment.
WITH Directions(D) AS (VALUES(0),(1),(2),(3),(4),(5)),
     Segments(Span,Tile) AS (VALUES(2,2),(3,2),(3,3))
INSERT INTO IconDefinitions(Name,Atlas,"Index")
SELECT 'ICON_DISTRICT_BS_SUPPORT_' || Tile || '_N' || Span || '_D' || D, Atlas, "Index"
FROM Directions CROSS JOIN Segments CROSS JOIN IconDefinitions
WHERE Name='ICON_DISTRICT_BS_SUPPORT_' || Tile;
