Function TCPConnectionsMgmt {

    #Below are a list of ALL established ports
    $EstablishedConnection = Get-NetTCPConnection -State Established
    $EstablishedConnectionOBJECT = [pscustomobject] @{
        'OutboundAddress' = $EstablishedConnection.RemoteAddress
        'OutboundPort'    = $EstablishedConnection.RemotePort

    }
    $EstablishedConnectionOBJECT

    #All ports established directly outbound
    $OutboundConnect = Get-NetTCPConnection -AppliedSetting Internet
    $OutboundConnectOBJECT = [pscustomobject] @{
        'ConnectionComingFrom' = $OutboundConnect.LocalAddress[0 - 1]
        'LocalPort'            = $OutboundConnect.LocalPort
        'OutboundAddress'      = $OutboundConnect.RemoteAddress
        'OutboundPort'         = $OutboundConnect.RemotePort
        'Connected?'           = $OutboundConnect.State
    }

    $OutboundConnectOBJECT

    Write-Host -ForegroundColor Green 'Above you see all connections to the internet and all established ports. Would you like to see ALL TCP/IP connections?'
    $R = Read-Host 'If yes, choose Y. If no, Choose N'
    iF ($R -like 'Y' -or $R -like 'Yes') {
        Get-NetTCPConnection
    }

    elseif ($R -like 'N' -or $R -like 'No') {
        Write-Output 'Goodbye'
        Break
    }
}#Function
