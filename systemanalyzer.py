import nix as bash
import powershell as posh

"""
    The "Scanner" logic will go here

    Check os

    if os == windows
    call PowerShell

    else
    run Bash Scripts


                 [Remove kitty before executing script]
                         ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
                       ▄▀░░░░░░░░░░░░▄░░░░░░░▀▄
                       █░░▄░░░░▄░░░░░░░░░░░░░░█
                       █░░░░░░░░░░░░▄█▄▄░░▄░░░█ ▄▄▄
                ▄▄▄▄▄  █░░░░░░▀░░░░▀█░░▀▄░░░░░█▀▀░██
                ██▄▀██▄█░░░▄░░░░░░░██░░░░▀▀▀▀▀░░░░██
                 ▀██▄▀██░░░░░░░░▀░██▀░░░░░░░░░░░░░▀██
                   ▀████░▀░░░░▄░░░██░░░▄█░░░░▄░▄█░░██
                      ▀█░░░░▄░░░░░██░░░░▄░░░▄░░▄░░░██
                      ▄█▄░░░░░░░░░░░▀▄░░▀▀▀▀▀▀▀▀░░▄▀
                     █▀▀█████████▀▀▀▀████████████▀
                     ████▀  ███▀      ▀███  ▀██▀

"""

import platform
def main():
    opSys1 = platform.system()
    # Bash commands will have mixed results on OS X. Commenting out for now.
    # if opSys1 == 'Darwin':
    #     print("You're on a Mac")
    #     print("_______________")
    #     bash.bash()
    if opSys1 == 'Windows':
        print("You're on a windows machine")
        posh.powershell()
    elif opSys1 == 'Linux' or opSys1 == 'Linux2':
        print("You're on a linux machine")
        print("_________________________")
        bash.bash()
main()
