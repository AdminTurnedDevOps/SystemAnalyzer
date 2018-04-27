import subprocess as posh

"""The module for running PowerShell"""
def powershell():
    # cmd = ["powershell","-ExecutionPolicy", "Bypass"]
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '&{. "./RamMgmt.ps1";}'])
