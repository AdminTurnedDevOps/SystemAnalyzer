$Mem = Get-Ciminstance Win32_OperatingSystem | Select @{Name='FreeRAM' ;expression={[math]::Round($_.FreePhysicalMemory / 1MB)}},
                                                      @{Name='MaxRAMSize' ;expression={[math]::Round($_.MaxProcessMemorySize / 1GB)}}
$Mem
