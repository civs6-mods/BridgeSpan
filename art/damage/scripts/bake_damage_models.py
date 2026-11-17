"""Bake the approved Blender bridge meshes and export all six tile directions."""
import argparse
import math
from pathlib import Path
import struct
import sys

import bpy
import bmesh
from mathutils import Matrix, Vector
import numpy as np


parser = argparse.ArgumentParser()
parser.add_argument("tiles", type=int, choices=(1, 2, 3))
parser.add_argument("--regional", action="store_true")
args = parser.parse_args(sys.argv[sys.argv.index("--") + 1:])
tiles = args.tiles
art = Path(__file__).resolve().parents[1]
theme = "regional" if args.regional else "industrial"
root = art / "build"
textures = root / "pantry" / "Textures"
exports = root / "exports"
for directory in (textures, exports, root / "pantry" / "Geometries"):
    directory.mkdir(parents=True, exist_ok=True)
material_name = f"BS_Damage_{tiles}"
size = 2048
suffix = f"{tiles}tile" if args.regional or tiles == 1 else f"flat-{tiles}tile"
source = art / "source" / f"BridgeSpan-damage-{tiles}tile.blend"
bpy.ops.wm.open_mainfile(filepath=str(source))
scene = bpy.context.scene
scene.render.engine = "CYCLES"
scene.cycles.samples = 1
scene.render.bake.margin = 8
scene.render.bake.margin_type = "EXTEND"
scene.unit_settings.system = "METRIC"
scene.unit_settings.scale_length = .01

parts=[]
for segment in range(1, tiles+1):
    for state in ("Intact", "Damaged"):
        collection=bpy.data.collections[f"S{segment:02d}_{state}"]
        collection.hide_viewport=False;collection.hide_render=False
        for part in collection.objects:
            if part.type != "MESH": continue
            group=part.vertex_groups.new(name=f"S{segment}_{state}")
            group.add(list(range(len(part.data.vertices))),1,"REPLACE")
            parts.append(part)
bpy.ops.object.select_all(action="DESELECT")
for part in parts:
    part.select_set(True)
bpy.context.view_layer.objects.active = parts[0]
bpy.ops.object.convert(target="MESH")
bpy.ops.object.join()
bridge = bpy.context.object
bridge.name = f"Approved_{tiles}Tile"
triangulate = bridge.modifiers.new("Native triangle topology", "TRIANGULATE")
triangulate.keep_custom_normals = True
bpy.ops.object.modifier_apply(modifier=triangulate.name)
mesh = bridge.data
assert mesh.uv_layers.get("Surface") is not None
mesh.uv_layers.new(name="Atlas")
mesh.uv_layers.active = mesh.uv_layers["Atlas"]
bpy.ops.object.mode_set(mode="EDIT")
bpy.ops.mesh.select_all(action="SELECT")
bpy.ops.uv.smart_project(angle_limit=math.radians(60), island_margin=.005, margin_method="FRACTION")
bpy.ops.object.mode_set(mode="OBJECT")
mesh.uv_layers["Atlas"].active_render = True

bake_image = bpy.data.images.new(f"{material_name}_Bake", width=size, height=size, float_buffer=True)
bake_image.colorspace_settings.name = "Non-Color"
bindings = []
for mat in mesh.materials:
    nodes, links = mat.node_tree.nodes, mat.node_tree.links
    original_uv = nodes.new("ShaderNodeUVMap")
    original_uv.uv_map = "Surface"
    for node in nodes:
        if node.type == "TEX_BRICK":
            links.new(original_uv.outputs[0], node.inputs["Vector"])
    output = next(node for node in nodes if node.type == "OUTPUT_MATERIAL")
    shader = nodes.get("Principled BSDF")
    target = nodes.new("ShaderNodeTexImage")
    target.image = bake_image
    nodes.active = target
    emission = nodes.new("ShaderNodeEmission")
    bindings.append((nodes, links, shader, output, emission))


def bake(kind):
    bpy.ops.object.bake(type=kind, use_clear=True, uv_layer="Atlas")
    pixels = np.empty((size, size, 4), dtype=np.float32)
    bake_image.pixels.foreach_get(pixels.ravel())
    return pixels


def write_dds(suffix, rgb):
    packed = np.full((size, size, 4), 255, dtype=np.uint8)
    packed[:, :, :3] = np.rint(np.clip(rgb, 0, 1) * 255).astype(np.uint8)
    header = [124, 0x100F, size, size, size * 4, 0, 1] + [0] * 11
    header += [32, 0x41, 0, 32, 0xff, 0xff00, 0xff0000, 0xff000000, 0x1000, 0, 0, 0, 0]
    path = textures / f"{material_name}_{suffix}.dds"
    path.write_bytes(b"DDS " + struct.pack("<31I", *header) + packed[::-1].tobytes())


for _, links, shader, output, emission in bindings:
    color = shader.inputs["Base Color"]
    if color.is_linked:
        links.new(color.links[0].from_socket, emission.inputs["Color"])
    else:
        emission.inputs["Color"].default_value = color.default_value
    links.new(emission.outputs[0], output.inputs["Surface"])
diffuse = np.clip(bake("EMIT")[:, :, :3], 0, 1)
assert (diffuse.max(axis=2) > .03).sum() > size * size / 20, "No visible color in atlas"
write_dds("D", np.where(diffuse <= .0031308, 12.92 * diffuse, 1.055 * diffuse**(1/2.4) - .055))

for _, links, shader, output, _ in bindings:
    links.new(shader.outputs[0], output.inputs["Surface"])
normal = bake("NORMAL")[:, :, :3]
normal[normal.max(axis=2) < .1] = (.5, .5, 1)
write_dds("N", normal)

for _, links, shader, output, emission in bindings:
    color = emission.inputs["Color"]
    for link in list(color.links):
        links.remove(link)
    color.default_value = (1 - shader.inputs["Roughness"].default_value,
                           shader.inputs["Metallic"].default_value, 0, 1)
    links.new(emission.outputs[0], output.inputs["Surface"])
surface = bake("EMIT")
write_dds("G", np.repeat(surface[:, :, 0:1], 3, axis=2))
write_dds("M", np.repeat(surface[:, :, 1:2], 3, axis=2))

if False: # Variant states overlap; do not bake false inter-state occlusion.
    for nodes, links, _, output, emission in bindings:
        occlusion = nodes.new("ShaderNodeAmbientOcclusion")
        occlusion.inputs["Distance"].default_value = .85
        links.new(occlusion.outputs["AO"], emission.inputs["Color"])
        links.new(emission.outputs[0], output.inputs["Surface"])
    scene.cycles.samples = 16
    ao = bake("EMIT")[:, :, :3]
    ao[ao.max(axis=2) == 0] = 1
    assert np.count_nonzero(ao[:, :, 0] < .92) > size * size / 100, "No contact shading in atlas"
    write_dds("A", .24 + .76 * ao)

# Keep one draw group, with the baked UV as the primary coordinate set.
for layer in list(mesh.uv_layers):
    if layer.name != "Atlas": mesh.uv_layers.remove(layer)
mesh.uv_layers.active=mesh.uv_layers["Atlas"]
mesh.uv_layers.active.name = "UV0"
mesh.uv_layers.active.active_render=True
assert len(mesh.uv_layers)==1
palette = bpy.data.materials.new(material_name)
mesh.materials.clear()
mesh.materials.append(palette)
for polygon in mesh.polygons:
    polygon.material_index = 0

for mask in range(1, 1 << tiles):
    for direction in range(6):
        name = f"BS_Damage_{tiles}_{direction}_M{mask}"
        data = mesh.copy()
        bm=bmesh.new();bm.from_mesh(data);bm.verts.ensure_lookup_table()
        remove=[]
        for vertex in mesh.vertices:
            keep=False
            for membership in vertex.groups:
                group_name=bridge.vertex_groups[membership.group].name
                if group_name.startswith("S") and "_" in group_name:
                    segment,state=group_name[1:].split("_",1)
                    wanted="Damaged" if mask & (1 << (int(segment)-1)) else "Intact"
                    if state==wanted:keep=True
            if not keep:remove.append(bm.verts[vertex.index])
        bmesh.ops.delete(bm,geom=remove,context="VERTS")
        bm.to_mesh(data);bm.free()
        obj = bpy.data.objects.new(name, data)
        bpy.context.collection.objects.link(obj)
        rotation = Matrix.Rotation(math.radians((1 - direction) * 60), 3, "Z")
        # Model units and first-water-tile offset match the existing placement path.
        transform = rotation.to_4x4() @ Matrix.Translation(((tiles - 1) * 320, 0, 0)) @ Matrix.Scale(64, 4)
        data.transform(transform)
        bpy.ops.object.select_all(action="DESELECT")
        bpy.ops.object.armature_add()
        armature = bpy.context.object
        armature.name = name + "_Rig"
        armature.data.bones[0].name = "Root"
        group = obj.vertex_groups.new(name="Root")
        group.add(list(range(len(data.vertices))), 1, "REPLACE")
        obj.modifiers.new("RootBinding", "ARMATURE").object = armature
        obj.select_set(True)
        bpy.context.view_layer.objects.active = obj
        bpy.ops.export_scene.fbx(filepath=str(exports / f"{name}.fbx"), use_selection=True,
            object_types={"MESH", "ARMATURE"}, axis_forward="Y", axis_up="Z",
            add_leaf_bones=False, bake_anim=False, apply_unit_scale=True)
        bpy.data.objects.remove(armature, do_unlink=True)
        bpy.data.objects.remove(obj, do_unlink=True)
        bpy.data.meshes.remove(data)
print(f"BAKED {tiles} tiles: {len(mesh.polygons)} triangles, {size}px texture maps, six placements")
