import nix as bash

"""
    The "Scanner" logic will go here

    Check os

    if os == windows
    call PowerShell

    else
    run Bash Scripts

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
    if opSys1 == 'Darwin':
        print("You're on a Mac")
        print("_______________")
        bash.bash()
    elif opSys1 == 'Windows':
        print("You're on a window")
    elif opSys1 == 'Linux' or opSys1 == 'Linux2':
        print("You're on a linux machine")
        print("_________________________")
        bash.bash()
main()
