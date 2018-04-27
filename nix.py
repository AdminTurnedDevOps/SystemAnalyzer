"""The module for running Bash Scripts"""
import subprocess as s


def bash():
    # Bar
    print("Disk Usage")
    print("_________________________")
    disk = s.run(["df", "-h"])
    print()
    print()
    print("RAM")
    print("_________________________")
    mem = s.run(["free", "-h"])
