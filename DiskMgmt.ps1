Function Get-DiskStats{

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
}Function
