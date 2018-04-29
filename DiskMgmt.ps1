Function Get-DiskStats {
    [cmdletbinding(ConfirmImpact = 'low')]
    Param (
        [Parameter(Mandatory = $true)]
        [string]$EnterComputerName = (Read-host 'Please enter a computername')
    )
    Begin {
        if ($EnterComputerNme -notmatch '\w+') {
            $EnterComputerName = $env:computername
        }#if
    }#Begin

    Process {
        Try {
            $FreeDiskSpace = Get-CimInstance -ClassName Win32_LogicalDisk
            $DiskDrive = Get-CimInstance -ClassName Win32_DiskDrive
            Foreach ($disk in $DiskDrive) {
                $DiskDriveOBJECT = [pscustomobject] @{
                    'DiskSize'       = $Disk.Size / 1GB
                    'FreeDiskSpace'  = $FreeDiskSpace.FreeSpace / 1GB
                    'DiskPartitions' = $Disk.partitions
                    'DiskModel'      = $Disk.Model
                }
                $DiskDriveOBJECT
            }#Foreach
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
