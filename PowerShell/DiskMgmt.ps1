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
            $FreeDiskSpace = Get-CimInstance -ClassName Win32_LogicalDisk
            $DiskDrive = Get-CimInstance -ClassName Win32_DiskDrive

            Foreach ($disk in $DiskDrive) {

                $DiskDriveOBJECT = [pscustomobject] @{
                    'DiskSize'       = $Disk.Size / 1GB
                    'FreeDiskSpace'  = $FreeDiskSpace | Select C:,D:,E:,F:,@{Name='FreeSpace' ;Expression={[math]::Round($_.FreeSpace / 1GB)}}
                    'DiskPartitions' = $Disk.Partitions
                    'DiskModel'      = $Disk.Model
                }
               $DiskDriveOBJECT
            }#Foreach
=======
           $Disk = Get-CimInstance -ComputerName $ComputerName -ClassName Win32_LogicalDisk
           $Disk
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