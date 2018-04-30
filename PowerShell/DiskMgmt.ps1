Function Get-DiskStats {

    Begin {
        [string]$ComputerName = Read-host 'Please enter a computername'
        if ($ComputerName -notmatch "\w+") {
            $ComputerName = $ENV:Computername
        }#if
    }#Begin

    Process {
        Try {
<<<<<<< HEAD:PowerShell/DiskMgmt.ps1
           $Disk = Get-CimInstance -ComputerName $ComputerName -ClassName Win32_LogicalDisk
           $Disk
=======

>>>>>>> f603fa9a355d9f40e430a92acea6481c1cc0c5c9:DiskMgmt.ps1
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
