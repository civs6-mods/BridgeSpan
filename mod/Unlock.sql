-- Run after technology-tree mods. Vanilla Engineering unlocks the stone
-- bridge; Harmony in Diversity uses its dedicated Arch technology.
UPDATE Districts
SET PrereqTech = CASE
    WHEN EXISTS (SELECT 1 FROM Technologies WHERE TechnologyType = 'TECH_ARCH_HD')
        THEN 'TECH_ARCH_HD'
    ELSE 'TECH_ENGINEERING'
END,
PrereqCivic = NULL
WHERE DistrictType = 'DISTRICT_BS_BRIDGE_1';

-- Steel unlocks the crossing before Combustion in both technology trees.
-- The 3-tile variant uses the same unlock in BridgeSpan_DistrictCommon.lua.
UPDATE Districts
SET PrereqTech = 'TECH_STEEL', PrereqCivic = NULL
WHERE DistrictType = 'DISTRICT_BS_BRIDGE_2';

-- Support districts are attached by gameplay and have no separate tech unlock.
UPDATE Districts
SET PrereqTech = NULL, PrereqCivic = NULL
WHERE DistrictType IN ('DISTRICT_BS_SUPPORT_2', 'DISTRICT_BS_SUPPORT_3');
