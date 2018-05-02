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