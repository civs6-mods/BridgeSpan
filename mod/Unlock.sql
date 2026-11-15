-- Run after technology-tree mods. In HD, Arch unlocks masonry bridges in
-- the same era as Canal. Otherwise follow Canal's final prerequisite.
UPDATE Districts
SET PrereqTech = CASE
    WHEN EXISTS (
        SELECT 1
        FROM Technologies AS arch
        JOIN Districts AS canal ON canal.DistrictType = 'DISTRICT_CANAL'
        JOIN Technologies AS canalTech ON canalTech.TechnologyType = canal.PrereqTech
        WHERE arch.TechnologyType = 'TECH_ARCH_HD'
          AND arch.EraType = canalTech.EraType
    ) THEN 'TECH_ARCH_HD'
    ELSE (SELECT PrereqTech FROM Districts WHERE DistrictType = 'DISTRICT_CANAL')
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
