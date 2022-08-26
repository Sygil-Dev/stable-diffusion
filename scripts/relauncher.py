import os, time

n = 0
while True:
    print('Relauncher: Launching...')
    if n > 0:
        print(f'\tRelaunch count: {n}')
    os.system("python scripts/webui.py")
    print('Relauncher: Process is ending. Press CTRL-C again to exit fully. Relaunching in 1s...')
    n += 1
    time.sleep(1)
