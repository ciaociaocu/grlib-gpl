# NanoXPython script for synthesis,place,route and generation of bitstream
import os
import sys
from os import path
from nxmap import *

dir = os.path.dirname(os.path.realpath(__file__))
sys.path.append(dir)
project = createProject(dir)
project.load('leon5mp_native.nym')
if not project.synthesize():
    sys.exit(1)
project.save('leon5mp_synthesized.nym')

if not project.place():
    sys.exit(1)
project.save('leon5mp_placed.nym')

if not os.path.exists(os.path.join(dir, 'leon5mp_pads.py')):
    project.savePorts('leon5mp_generated_pads.py')

if not project.route():
    sys.exit(1)
project.save('leon5mp_routed.nym')

# Reports
project.reportInstances()

# Analyzer
analyzer = project.createAnalyzer()
analyzer.launch()

# Generate Bitstream
project.generateBitstream('leon5mp_bitfile.nxb')

project.destroy()
