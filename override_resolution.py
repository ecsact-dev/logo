import bpy
import sys
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--res_x", type=int, required=True)
parser.add_argument("--res_y", type=int, required=True)

args, unknown_args = parser.parse_known_args(rules_blender_python_script_args)

for scene in bpy.data.scenes:
  scene.render.resolution_x = args.res_x
  scene.render.resolution_y = args.res_y
