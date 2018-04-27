Function CPUTracker {
    $CPULOAD = Get-CimInstance -class Win32_Processor
    Foreach ($CPU in $CPULOAD) {
        $CPULOADobject = [pscustomobject] @{
            'CPUName'           = $CPU.Name
            'MaxClockSpeed'     = $CPU.MaxClockSpeed
            'CPULoadPercentage' = $CPU.LoadPercentage
        }
        Write-Host -ForegroundColor Green 'Below are your CPU results'
        $CPULOADobject
    }#Foreach
}
