import subprocess as posh
"""
	Functions for the different PowerShell scripts. 
"""
    
def get_event_logs():
	posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/GetEventLogs.ps1";', '&GetEventLogs'])


def ram_info():
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/RamMgmt.ps1";', '&Get-RAMSize'])
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/CurrentRAMUsage.ps1";', '&CurrentRAMUsage'])


def cpu_info():
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/CPUTracker.ps1";', '&CPUTracker'])


def disk_info():
    posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/DiskMgmt.ps1";', '&Get-DiskStats'])


def network_info():
	posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/NetworkMgmt.ps1";', '&NetProtocols'])
	posh.call(["C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe", "-ExecutionPolicy", "Bypass", '-Command', '. "PowerShell/TCPConnectionsMgmt.ps1";', '&TCPConnectionsMgmt'])