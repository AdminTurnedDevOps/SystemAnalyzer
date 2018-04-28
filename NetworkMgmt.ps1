Function NetProtocols {
    $NetworkProtocol = Get-CimInstance -ClassName Win32_NetworkProtocol
    $NetworkAdapter = Get-CimInstance -ClassName Win32_NetworkAdapter
    $NetworkPerformance = Get-CimInstance -ClassName Win32_PerfFormattedData_Tcpip_NetworkInterface
    $NET = $NetworkProtocol + $NetworkAdapter + $NetworkPerformance

    Write-Host -ForegroundColor Green "Below is a list of;`nNetwork Protocols`nNetwork Adapters`nService Names`nBandwidth Information`nNetwork adapter you are currently using"
    
    Foreach ($Protocol in $NET) {
        $NetOBJECTS = [pscustomobject] @{
            'NetworkProtocol'          = $Protocol.Name
            'ProtocolCaption'          = $Protocol.Caption
            'NetworkAdapters'          = $Protocol.Name
            'NetAdapterServiceName'    = $Protocol.ServiceName
            'Name'                     = $Protocol.Name
            'BytesReceivedPerSecond'   = $Protocol.BytesReceivedPersec
            'CurrentUtilizedBandwidth' = $Protocol.CurrentBandwidth
        }

        $NetOBJECTS
    }
}#function
