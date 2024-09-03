import os
import sys

def start():
    bash = os.system(f'bash python prediction.py --{sys.argv[1]}={sys.argv[2]} --{sys.argv[3]}={sys.argv[4]}')

    print(bash)

start()
