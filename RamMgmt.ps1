Function Get-RAMSize {
    Try {
$RamCIM = Get-CimInstance -ClassName Win32_PhysicalMemory |
          Select @{Name='size' ;expression={[math]::Round($_.Capacity / 1GB)}}
Write-Output 'Below is your total memory'
$RamCIM
    }

    Catch {
        Write-Warning 'An error has occured..'
        Pause
        $_
        Throw
    }
}#Function
Get-RAMSize
