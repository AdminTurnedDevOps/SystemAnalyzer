$Process = Get-Process
$MemoryUsage = $Process | select product,@{Name='VM' ;expression={[math]::Round($_.VM / 1mb)}},@{Name='PeakVirtualMemorySize' ;expression={[math]::Round($_.PeakVirtualMemorySize / 1mb)}},
@{Name='VirtualMemorySize64' ;expression={[math]::Round($_.VirtualMemorySize64 / 1mb)}} | Where {$_.Product -like "*Visual Studio*"}

$MemoryUsage[0]
