import subprocess as posh

"""The module for running PowerShell"""
def powershell():
    # cmd = ["powershell","-ExecutionPolicy", "Bypass"]
    # posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '&{. "./RamMgmt.ps1";}'])

    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/RamMgmt.ps1";', '&Get-RAMSize'])
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/DiskMgmt.ps1";', '&Get-DiskStats'])
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/CurrentRAMUsage.ps1";', '&CurrentRAMUsage'])
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/CPUTracker.ps1";', '&CPUTracker'])
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/GetEventLogs.ps1";', '&GetEventLogs'])
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/NetworkMgmt.ps1";', '&NetProtocols'])
    
    