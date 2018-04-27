"""The module for running Bash Scripts"""
import subprocess as s


def disk():
    print("Disk Usage")
    print("_________________________")
    disk = s.run(["df", "-h"])


def mem():
    print("RAM")
    print("_________________________")
    mem = s.run(["free", "-h"])



def bash():
    disk()
    print()
    mem()
