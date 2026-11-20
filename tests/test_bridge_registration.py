"""Limit the globally registered building types while checking every city slot."""
from pathlib import Path
import re
import sqlite3

mod = Path(__file__).resolve().parents[1] / "mod"
district_sql = (mod / "Districts.sql").read_text(encoding="utf-8")
db = sqlite3.connect(":memory:")
# The game copies dozens of ordinary district fields from the vanilla Canal.
# Their values do not affect the crossing, repair or artwork keys checked here.
fields = re.search(r"INSERT INTO Districts\(([^)]+)\)", district_sql)[1]
db.execute(f"CREATE TABLE Districts({fields}, PRIMARY KEY(DistrictType))")
db.executescript("""
    INSERT INTO Districts(DistrictType) VALUES ('DISTRICT_CANAL');
    CREATE TABLE Types(Type PRIMARY KEY, Kind);
    CREATE TABLE District_ValidTerrains(DistrictType, TerrainType);
    CREATE TABLE CivilopediaPageExcludes(SectionId, PageId);
    CREATE TABLE Buildings(BuildingType PRIMARY KEY,Name,Description,Cost,InternalOnly,PrereqDistrict);
    CREATE TABLE Buildings_XP2(BuildingType PRIMARY KEY,Bridge);
    CREATE TABLE BuildingModifiers(BuildingType,ModifierId);
    INSERT INTO BuildingModifiers VALUES ('BUILDING_GOLDEN_GATE_BRIDGE','GOLDENGATE_GRANT_ROUTES');
    CREATE TABLE Projects(ProjectType PRIMARY KEY,Name,ShortName,Description,Cost,CostProgressionModel,RequiredBuilding,AdvisorType,UnlocksFromEffect);
""")
for file in ("Districts.sql", "Worksites.sql"):
    db.executescript((mod / file).read_text(encoding="utf-8"))
slots = range(1, 37)
markers = {f"BUILDING_BS_TILE_{tile}_S{slot}" for tile in (1, 2, 3) for slot in slots}



def values(sql):
    return {row[0] for row in db.execute(sql)}


assert values("SELECT BuildingType FROM Buildings") == markers
assert values("""SELECT DistrictType FROM Districts WHERE DistrictType GLOB 'DISTRICT_BS_*'
                 EXCEPT SELECT PageId FROM CivilopediaPageExcludes WHERE SectionId='DISTRICTS'"""
              ) == {"DISTRICT_BS_BRIDGE_1", "DISTRICT_BS_BRIDGE_2"}
assert values("SELECT Type FROM Types WHERE Kind='KIND_BUILDING'") == markers
assert values("SELECT BuildingType FROM Buildings_XP2 WHERE Bridge=1") == markers
assert not values("SELECT ProjectType FROM Projects")
assert values("SELECT BuildingType FROM BuildingModifiers WHERE BuildingType LIKE 'BUILDING_BS_%'") == markers
supports = {f"DISTRICT_BS_SUPPORT_{i}_N{n}_D{d}" for n in (2, 3) for d in range(6) for i in range(2, n + 1)}
assert values("SELECT DistrictType FROM Districts WHERE DistrictType GLOB '*_N*_D*' AND MaxPerPlayer=0") == supports
print("108 crossing buildings, zero custom repair projects and 18 oriented supports verified")

# The mod must allow the ruleset (or another mod) to choose its game core.
assert not list(mod.rglob("*.dll")), "Unexpected custom game core in the package"
for sql in mod.glob("*.sql"):
    assert not re.search(r"\bGameCores\b", sql.read_text(encoding="utf-8"), re.I), sql
