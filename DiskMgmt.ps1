Function Get-DiskStats {

    Begin {
        [string]$ComputerName = Read-host 'Please enter a computername'
        if ($ComputerName -notmatch "\w+") {
            $ComputerName = $ENV:Computername
        }#if
    }#Begin

    Process {
        Try {
           $Disk = Get-CimInstance -ClassName Win32_LogicalDisk
           $Disk
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
