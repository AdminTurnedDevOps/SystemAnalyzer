Function NetProtocols {

$NetworkProtocol = Get-CimInstance -ClassName Win32_NetworkProtocol
$NetworkAdapter = Get-CimInstance -ClassName Win32_NetworkAdapter
$NetworkPerformance = Get-CimInstance -ClassName Win32_PerfFormattedData_Tcpip_NetworkInterface

Write-Host -ForegroundColor Green 'Below are your current network protocols being utilized by your system'
$NetworkOBJECT = [pscustomobject] @{
    'NetworkProtocol' = $NetworkProtocol.Name
    'ProtocolCaption' = $NetworkProtocol.Caption
}
Write-Host -ForegroundColor 'Below are your current network adapters and service names'
$NetworkOBJECT

$NetworkOBJECT2 = [pscustomobject] @{
    'NetworkAdapters'       = $NetworkAdapter.Name
    'NetAdapterServiceName' = $NetworkAdapter.ServiceName
}
$NetworkOBJECT2

$NetworkOBJECT3 = [pscustomobject] @{
    'Name'                     = $NetworkPerformance.Name
    'BytesReceivedPerSecond'   = $NetworkPerformance.BytesReceivedPersec
    'CurrentUtilizedBandwidth' = $NetworkPerformance.CurrentBandwidth
}
Write-Host -ForegroundColor Green 'Below is bandwidth information for the adapter you are currently using'
$NetworkOBJECT3
}#Function
