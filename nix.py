"""The module for running Bash Scripts"""
import subprocess as s


def bash():
    # Bar
    disk = s.run(["df", "-h"])
