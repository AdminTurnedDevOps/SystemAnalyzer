"""The module for running Bash Scripts"""
import subprocess as s


def disk():
    print("Disk Usage")
    print("_________________________")
    


def mem():
    print("RAM")
    print("_________________________")
    mem = s.run(["free", "-h"])



def os_info():
    s.call("Bash/os.sh", shell=True)


def network_info():
    s.call("Bash/network.sh", shell=True)


def bash():
    disk()
    print()
    mem()

