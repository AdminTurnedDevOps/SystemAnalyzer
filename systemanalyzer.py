import platform

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

def show_win_menu():
    print("1. Get Event Logs")
    print("2. CPU Info")
    print("3. Disk Info")
    print("4. RAM Info")
    print("5. Network Info")
    print("6. Quit")

def main():
    op_sys = platform.system()
    if op_sys == 'Windows':
        while True:    
            show_win_menu()
            option = int(input("Enter menu selection: "))
            if option == 1:
                posh.get_event_logs()
            elif option == 2:
                posh.cpu_info()
            elif option == 3:
                posh.disk_info()
            elif option == 4:
                posh.ram_info()
            elif option == 5:
                posh.network_info()
            elif option == 6:
                break

    elif op_sys == 'Linux' or opSys1 == 'Linux2':
        bash.bash()


main()
