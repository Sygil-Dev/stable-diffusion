import os, time, sys

argString = ' '.join(sys.argv[1:])

n = 0
while True:
    print('Relauncher: Launching...')
    if n > 0:
        print(f'\tRelaunch count: {n}')
    os.system("python scripts/webui.py " + argString)
    print('Relauncher: Process is ending. Relaunching in 0.5s...')
    n += 1
    time.sleep(0.5)
