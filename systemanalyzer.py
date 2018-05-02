import platform

import nix as bash
import powershell as posh



def show_win_menu():
    # Prints Menu for PowerShell items
    print("1. Get Event Logs")
    print("2. CPU Info")
    print("3. Disk Info")
    print("4. RAM Info")
    print("5. Network Info")
    print("6. Quit")

def show_nix_menu():
    # Prints Menu for Unix/Linux items
    print("1. Show OS")
    print("2. Network Info")
    print("3. RAM Info")
    print("4. Users")
    print("5. Disk Info")
    print("6. Quit")

def main():
    # platform.system() returns an OS variable and stores it in op_sys
    # Based on the value returned, the Windows or Linux loops will run
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

    elif op_sys == 'Linux' or op_sys == 'Linux2':
        while True:
            show_nix_menu()
            option = int(input("Enter menu selection: "))
            if option == 1:
                bash.os_info()
            elif option == 2:
                bash.network_info()
            elif option == 3:
                bash.memory_info()
            elif option == 4:
                bash.users()
            elif option == 5:
                bash.disk_info()
            elif option == 6:
                break

main()