"""Build native Pantry descriptors from approved models and verified SDK metadata."""
import argparse, copy, json, shutil
from pathlib import Path
import xml.etree.ElementTree as ET

parser=argparse.ArgumentParser()
parser.add_argument('--template',type=Path,default=Path(__file__).resolve().parents[1]/'templates',help='Approved descriptor templates')
args=parser.parse_args()
root=Path(__file__).resolve().parents[1]/'build'
pantry=root/'pantry';template=args.template
for directory in ('Textures','Materials','Assets','XLPs'): (pantry/directory).mkdir(exist_ok=True)
def write(tree,path):
    ET.indent(tree);tree.write(path,encoding='utf-8',xml_declaration=True)
def rename(tree,mapping):
    for node in tree.iter():
        for key,value in node.attrib.items():
            if value in mapping:node.set(key,mapping[value])
xlp=ET.parse(template/'XLPs/BS_RegionalWorld.xlp')
xlp.find('m_PackageName').set('text','BS_DamagedWorld')
entries=xlp.find('m_Entries');entries.clear()
for span in (1,2,3):
    material=f'BS_Damage_{span}';oldmat=f'BS_Regional_{span}'
    for suffix in ('D','N','G','M'):
        tex=ET.parse(template/f'Textures/{oldmat}_{suffix}.tex')
        rename(tex,{f'{oldmat}_{suffix}':f'{material}_{suffix}',f'{oldmat}_{suffix}.dds':f'{material}_{suffix}.dds'})
        assert (pantry/f'Textures/{material}_{suffix}.dds').stat().st_size==128+2048*2048*4
        write(tex,pantry/f'Textures/{material}_{suffix}.tex')
    mat=ET.parse(template/f'Materials/{oldmat}.mtl')
    rename(mat,{oldmat:material,**{f'{oldmat}_{s}':f'{material}_{s}'for s in ('D','N','G','M')},f'{oldmat}_A':'BS_Damage_AO','BS_Regional_AO':'BS_Damage_AO'})
    write(mat,pantry/f'Materials/{material}.mtl')
    for direction in range(6):
        oldgeo=f'BS_RegionalPlaced_{span}_{direction}';oldasset=f'BS_Regional_{span}_{direction}'
        for mask in range(1,1<<span):
            name=f'BS_Damage_{span}_{direction}_M{mask}'
            geometry_name=f'BS_DamageGeometry_{span}_{direction}_M{mask}'
            fbx=root/f'exports/{name}.fbx';metadata=json.loads(fbx.with_suffix('.fbx.metadata.json').read_text(encoding='utf-8-sig'))
            assert len(metadata)==1;mesh=metadata[0]
            assert mesh['Name']==name and mesh['Bones']==['Root']
            assert mesh['Groups']==[{'TriCount':mesh['Indices']//3,'TriFirst':0,'MaterialIndex':0}]
            geo=ET.parse(template/f'Geometries/{oldgeo}.geo')
            mapping={oldgeo:name,f'{oldgeo}.fgx':f'{name}.fgx',oldmat:material,oldasset:name}
            rename(geo,mapping)
            geo.find('m_ModelName').set('text',mesh['Models'][0]);geo.find('m_SourceFilePath').set('text',str(fbx))
            geometry=geo.find('m_Meshes/Element')
            geometry.find('m_nPrimitiveCount').text=str(mesh['Indices']//3);geometry.find('m_nVertexCount').text=str(mesh['Vertices'])
            geometry.find('m_Groups/Element/m_nPrims').text=str(mesh['Indices']//3)
            geo.find('m_Name').set('text',geometry_name)
            write(geo,pantry/f'Geometries/{geometry_name}.geo')
            asset=ET.parse(template/f'Assets/{oldasset}.ast');rename(asset,mapping)
            asset.find('m_GeometrySet/m_ModelInstances/Element/m_GeoName').set('text',geometry_name)
            write(asset,pantry/f'Assets/{name}.ast')
            entry=ET.SubElement(entries,'Element');ET.SubElement(entry,'m_EntryID',text=name.upper());ET.SubElement(entry,'m_ObjectName',text=name)
shutil.copy2(template/'Textures/BS_Regional_AO.dds',pantry/'Textures/BS_Damage_AO.dds')
ao=ET.parse(template/'Textures/BS_Regional_AO.tex');rename(ao,{'BS_Regional_AO':'BS_Damage_AO','BS_Regional_AO.dds':'BS_Damage_AO.dds'});write(ao,pantry/'Textures/BS_Damage_AO.tex')
write(xlp,pantry/'XLPs/BS_DamagedWorld.xlp')
print('Prepared',len(entries),'damage assets')
