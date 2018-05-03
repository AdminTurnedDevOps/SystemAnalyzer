Function Get-DiskStats {

    Begin {
        [string]$ComputerName = Read-host 'Please enter a computername'
        if ($ComputerName -notmatch "\w+") {
            $ComputerName = $ENV:Computername
        }#if
    }#Begin

    Process {
        Try {
            $FreeDiskSpace = Get-CimInstance -ClassName Win32_LogicalDisk
            $FreeDiskSpace
        }
        Catch {
            Write-Warning 'An error occured. Please review below...'
            Pause
            $_
            Throw
        }
    }#Process
    End {}
}#Function
