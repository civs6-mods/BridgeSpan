"""Create editable, independently damaged bridge segments from approved source art.

Run with Blender: blender -b --python build_damage_models.py -- --source-root ... --output ...
Source files are original BridgeSpan models, not Firaxis assets.
"""
import argparse
import math
from pathlib import Path
import random
import sys

import bpy
import bmesh
from mathutils import Vector

parser=argparse.ArgumentParser()
parser.add_argument('--source-root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--span',type=int,choices=(1,2,3))
args=parser.parse_args(sys.argv[sys.argv.index('--')+1:])
args.output.mkdir(parents=True,exist_ok=True)

def slice_mesh(source,name,left,right):
    mesh=source.data.copy()
    bm=bmesh.new();bm.from_mesh(mesh)
    for point,normal in ((left,(-1,0,0)),(right,(1,0,0))):
        if point is None:continue
        result=bmesh.ops.bisect_plane(bm,geom=list(bm.verts)+list(bm.edges)+list(bm.faces),
            plane_co=(point,0,0),plane_no=normal,clear_outer=True,dist=.00001)
        boundary=[e for e in result['geom_cut'] if isinstance(e,bmesh.types.BMEdge) and e.is_boundary]
        if boundary:
            try:bmesh.ops.holes_fill(bm,edges=boundary,sides=0)
            except RuntimeError:pass
    bm.to_mesh(mesh);bm.free();mesh.update()
    obj=bpy.data.objects.new(name,mesh)
    return obj

def block(collection,name,center,size,material,rotation=(0,0,0)):
    bpy.ops.mesh.primitive_cube_add(size=1,location=center)
    obj=bpy.context.object;obj.name=name
    for owner in list(obj.users_collection):owner.objects.unlink(obj)
    collection.objects.link(obj)
    obj.scale=size;obj.rotation_euler=rotation
    obj.data.materials.append(material)
    bpy.ops.object.transform_apply(location=False,rotation=False,scale=True)
    bevel=obj.modifiers.new('Chipped edges','BEVEL');bevel.width=min(size)*.07;bevel.segments=1
    return obj

def rebar(collection,name,a,b,material):
    axis=Vector(b)-Vector(a)
    bpy.ops.mesh.primitive_cylinder_add(vertices=5,radius=.014,depth=axis.length,location=(Vector(a)+Vector(b))/2)
    obj=bpy.context.object;obj.name=name;obj.rotation_euler=axis.to_track_quat('Z','Y').to_euler()
    for owner in list(obj.users_collection):owner.objects.unlink(obj)
    collection.objects.link(obj);obj.data.materials.append(material)
    return obj

def build(span):
    source=args.source_root/f'BridgeSpan-regional-{span}tile.blend'
    bpy.ops.wm.open_mainfile(filepath=str(source))
    scene=bpy.context.scene
    original=bpy.data.collections['Bridge geometry']
    parts=list(original.objects)
    bpy.ops.object.select_all(action='DESELECT')
    for part in parts:
        if part.type=='CURVE':part.data.bevel_resolution=0
        for modifier in part.modifiers:
            if modifier.type=='BEVEL':modifier.segments=1
        part.select_set(True)
    bpy.context.view_layer.objects.active=parts[0]
    bpy.ops.object.convert(target='MESH');bpy.ops.object.join()
    whole=bpy.context.object;whole.name='Approved bridge reference'
    bpy.ops.object.transform_apply(location=True,rotation=True,scale=True)
    original.hide_render=True;original.hide_viewport=True
    originals=list(whole.data.materials)
    rubble=next((m for m in originals if 'concrete' in m.name.lower() or 'limestone' in m.name.lower()),originals[0])
    metal=next((m for m in originals if 'steel' in m.name.lower() or 'metal' in m.name.lower()),originals[-1])
    charcoal=bpy.data.materials.new('Exposed dark fracture');charcoal.use_nodes=True
    bsdf=charcoal.node_tree.nodes.get('Principled BSDF');bsdf.inputs['Base Color'].default_value=(.075,.065,.052,1);bsdf.inputs['Roughness'].default_value=.94
    scene['Bridge span']=span;scene['Damage mask']=0;scene['Damage presentation']='Per water tile; intact neighbouring segments retained.'
    scene['Source attribution']='Original BridgeSpan regional model and procedural fracture geometry.'
    for segment in range(span):
        center=(segment-(span-1)/2)*10
        left=None if segment==0 else center-5
        right=None if segment==span-1 else center+5
        healthy=bpy.data.collections.new(f'S{segment+1:02d}_Intact');scene.collection.children.link(healthy)
        intact=slice_mesh(whole,f'S{segment+1:02d} intact',left,right);healthy.objects.link(intact)
        broken=bpy.data.collections.new(f'S{segment+1:02d}_Damaged');scene.collection.children.link(broken)
        # Staggered deck ends, exposed supports and debris make the missing crossing readable.
        gap=.82 if span==1 else .92
        first=slice_mesh(intact,f'S{segment+1:02d} fractured west end',None,center-gap)
        second=slice_mesh(intact,f'S{segment+1:02d} fractured east end',center+gap,None)
        broken.objects.link(first);broken.objects.link(second)
        for obj,edge,sign in ((first,center-gap,1),(second,center+gap,-1)):
            for vertex in obj.data.vertices:
                distance=abs(vertex.co.x-edge)
                if distance<.85:
                    influence=1-distance/.85
                    vertex.co.x+=sign*.13*math.sin(vertex.co.y*5.7+vertex.co.z*3.1)*influence
                    vertex.co.z-=influence*(.12+.07*math.sin(vertex.co.y*4.3))
            obj.data.update()
        rng=random.Random(20261117+span*100+segment)
        road_width=1.12 if span==1 else 1.92
        for i in range(14 if span==1 else 10):
            sx=rng.uniform(.11,.30);sy=rng.uniform(.10,.26);sz=rng.uniform(.10,.28)
            block(broken,f'Fallen {"masonry" if span==1 else "concrete"} {i+1}',
                (center+rng.uniform(-.65,.70),rng.uniform(-road_width*.55,road_width*.55),rng.uniform(-.20,.08)),
                (sx,sy,sz),rubble,(rng.uniform(-.5,.5),rng.uniform(-.6,.6),rng.uniform(-math.pi,math.pi)))
        block(broken,'Dropped deck fragment',(center+.55,0,.11),(.68,road_width*.82,.16),rubble,(0,.44,.12))
        if span>1:
            for sign in (-1,1):
                edge=center+sign*gap
                for i in range(5):
                    y=-.7+i*.35
                    rebar(broken,'Exposed bent reinforcing bar',(edge,y,.67),
                        (edge-sign*rng.uniform(.32,.57),y+rng.uniform(-.09,.09),rng.uniform(.47,.78)),metal)
                block(broken,'Dark exposed road edge',(edge,0,.70),(.06,1.75,.055),charcoal)
        broken.hide_render=True;broken.hide_viewport=True
        # All geometry stays in the approved bridge's coordinate system for shared atlas baking.
    scene['Preview instructions']='Toggle Sxx_Intact and Sxx_Damaged collections for each damaged tile.'
    path=args.output/f'BridgeSpan-damage-{span}tile.blend'
    bpy.ops.wm.save_as_mainfile(filepath=str(path))
    print('SAVED_EDITABLE_DAMAGE_MODEL',span,str(path),flush=True)

for span in ([args.span] if args.span else (1,2,3)):build(span)
