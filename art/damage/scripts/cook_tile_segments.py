"""Cook bridge district TileBases with independent native tile damage states."""
import argparse
import copy
import json
import shutil
import subprocess
import xml.etree.ElementTree as ET
from pathlib import Path

ART = Path(__file__).resolve().parents[1]
BUILD = ART / "build/segments"
PANTRY = BUILD / "pantry"
PACKAGE = "BS_BridgeTiles"


def write(tree, destination):
    destination.parent.mkdir(parents=True, exist_ok=True)
    ET.indent(tree)
    tree.write(destination, encoding="utf-8", xml_declaration=True)


def rename(tree, names):
    for node in tree.iter():
        old = node.get("text")
        if old in names:
            node.set("text", names[old])


def texture_descriptors(span):
    old = f"BS_Regional_{span}"
    new = f"BS_Damage_{span}"
    names = {old: new, "BS_Regional_AO": "BS_Damage_AO", old + "_A": "BS_Damage_AO"}
    for suffix in ("D", "N", "G", "M"):
        original, target = old + "_" + suffix, new + "_" + suffix
        names[original] = target
        names[original + ".dds"] = target + ".dds"
        tex = ET.parse(ART / f"templates/Textures/{original}.tex")
        rename(tex, names)
        assert (PANTRY / f"Textures/{target}.dds").is_file()
        write(tex, PANTRY / f"Textures/{target}.tex")
    material = ET.parse(ART / f"templates/Materials/{old}.mtl")
    rename(material, names)
    write(material, PANTRY / f"Materials/{new}.mtl")


def segment_model(template, span, direction, tile, state):
    name = f"BS_Segment_{span}_{direction}_{tile}_{state}"
    fbx = BUILD / f"exports/{name}.fbx"
    mesh, = json.loads(fbx.with_suffix(".fbx.metadata.json").read_text(encoding="utf-8-sig"))
    assert mesh["Name"] == name and mesh["Bones"] == ["Root"]
    group, = mesh["Groups"]
    assert group["TriFirst"] == 0 and group["TriCount"] * 3 == mesh["Indices"]
    material = f"BS_Damage_{span}"
    old = f"BS_RegionalPlaced_{span}_{direction}"
    geo = ET.parse(ART / f"templates/Geometries/{old}.geo")
    rename(geo, {old: name, old + ".fgx": name + ".fgx", f"BS_Regional_{span}": material})
    geo.find("m_Name").set("text", name + "_Geo")
    geo.find("m_ClassName").set("text", "LandmarkModel")
    geo.find("m_ModelName").set("text", mesh["Models"][0])
    geo.find("m_SourceFilePath").set("text", str(fbx))
    geo_mesh = geo.find("m_Meshes/Element")
    geo_mesh.find("m_nVertexCount").text = str(mesh["Vertices"])
    geo_mesh.find("m_nPrimitiveCount").text = str(group["TriCount"])
    geo_mesh.find("m_Groups/Element/m_nPrims").text = str(group["TriCount"])
    write(geo, PANTRY / f"Geometries/{name}_Geo.geo")

    model = copy.deepcopy(template)
    original = f"BS_AlignedWorksite_{span}_{direction}"
    rename(model, {original: name, f"BS_AlignedWorksite_{span}": material})
    model.find("m_GeoName").set("text", name + "_Geo")
    visible = {"Pillaged"} if state == "Pillaged" else {"Worked", "Unworked"}
    for group in model.findall("m_GroupStates/Element"):
        for field in group.findall("m_Values/m_Values/Element"):
            if field.find("m_ParamName").get("text") == "Visible":
                field.find("m_bValue").text = str(group.find("m_StateName").get("text") in visible).lower()
    return model


def cook(worksites, sdk, cooker):
    xlp = ET.parse(worksites / "XLPs/BS_AlignedWorksites.xlp")
    xlp.find("m_PackageName").set("text", PACKAGE)
    entries = xlp.find("m_Entries")
    entries.clear()
    for span in (1, 2, 3):
        texture_descriptors(span)
        for direction in range(6):
            source = worksites / f"Assets/BS_AlignedWorksite_{span}_{direction}.ast"
            for tile in range(1, span + 1):
                name = f"BS_BridgeTile_{span}_{direction}_{tile}"
                asset = ET.parse(source)
                asset.find("m_Name").set("text", name)
                models = asset.find("m_GeometrySet/m_ModelInstances")
                construction = models.find("Element")
                if tile != 1:
                    models.remove(construction)
                for state in ("Intact", "Pillaged"):
                    models.append(segment_model(construction, span, direction, tile, state))
                write(asset, PANTRY / f"Assets/{name}.ast")
                entry = ET.SubElement(entries, "Element")
                ET.SubElement(entry, "m_EntryID", text=name.upper())
                ET.SubElement(entry, "m_ObjectName", text=name)
    ao = ET.parse(ART / "templates/Textures/BS_Regional_AO.tex")
    rename(ao, {"BS_Regional_AO": "BS_Damage_AO", "BS_Regional_AO.dds": "BS_Damage_AO.dds"})
    write(ao, PANTRY / "Textures/BS_Damage_AO.tex")
    shutil.copy2(ART / "templates/Textures/BS_Regional_AO.dds", PANTRY / "Textures/BS_Damage_AO.dds")
    path = PANTRY / f"XLPs/{PACKAGE}.xlp"
    write(xlp, path)
    output = BUILD / "cooked"
    output.mkdir(exist_ok=True)
    call = [cooker / "Civ6AssetCooker_FinalRelease.exe", "--absolute_paths", "--no_mt", "--platform",
            "Windows", "--pantry", PANTRY, worksites, sdk / "pantry", sdk / "DLC/Expansion2/pantry",
            "--config", cooker / "Civ6.cfg", "--mode", "XLP", "--stewpot", output, path]
    result = subprocess.run(call, cwd=cooker, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    log = result.stdout.decode("utf-8", "replace")
    (BUILD / "cook.log").write_text(log, encoding="utf-8")
    if (result.returncode or "XLP cook completed with success." not in log
            or "HAS MISSING ENTRIES" in log or "with error asset" in log or "had errors:" in log):
        raise RuntimeError(f"TileBase cook failed: {BUILD / 'cook.log'}")
    print(output / f"{PACKAGE}.blp")
    return output


def stage(output):
    mod = ART.parents[1] / "mod"
    relative = Path("Platforms/Windows/BLPs")
    manifest = ET.parse(mod / "BridgeSpan.modinfo")
    expected = {Path(el.text).relative_to(relative) for el in manifest.findall("Files/File")
                if el.text.startswith(relative.as_posix() + "/")}
    actual = {p.relative_to(output) for p in output.rglob("*") if p.is_file()}
    if actual != expected:
        raise ValueError(f"Cooked files differ from the mod manifest: {actual ^ expected}")
    for name in sorted(expected):
        target = mod / relative / name
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(output / name, target)


if __name__ == "__main__":
    args = argparse.ArgumentParser()
    args.add_argument("worksite_pantry", type=Path)
    args.add_argument("sdk_assets", type=Path)
    args.add_argument("cooker", type=Path)
    args.add_argument("--stage", action="store_true", help="Copy the verified art package and its textures into mod/")
    options = args.parse_args()
    output = cook(options.worksite_pantry, options.sdk_assets, options.cooker)
    if options.stage:
        stage(output)
