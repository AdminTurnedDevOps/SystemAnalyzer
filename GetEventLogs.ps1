Function GetEventLogs {
    Write-Host "Please select from the following choices;`n1)Application Log`n2)Hardware Log`n3)KeyManagementService Log`n4)oAlerts Log`n5)Security Log`n6)System Log`n7)Windows PowerShell Log`n8)QUIT"
    $R = Read-Host 'Please select the option number associated to the log you want to review...'

    switch ($R) {

        '1' {
            New-Object –TypeName PSObject
            $Application = Get-EventLog -LogName Application
            Add-Member -InputObject $Application -MemberType ScriptMethod -Name "FirstTwenty" -Value {Get-EventLog -LogName Application | Sort-Object -Descending | Select-Object -First 20}
            $Application.FirstTwenty()
        }

        '2' {
            New-Object –TypeName PSObject
            $HardwareEvents = Get-EventLog -LogName HardwareEvents
            Add-Member -InputObject $HardwareEvents -MemberType ScriptMethod -Name "FirstTwenty" -Value {Get-EventLog -LogName HardwareEvents | Sort-Object -Descending | Select-Object -First 20}
            $HardwareEvents.FirstTwenty()
        }
        '3' {
            New-Object –TypeName PSObject
            $Key_Management_Service = Get-EventLog -LogName 'Key Management Service'
            Add-Member -InputObject $Key_Management_Service -MemberType ScriptMethod -Name "FirstTwenty" -Value {Get-EventLog -LogName 'Key Management Service' | Sort-Object -Descending | Select-Object -First 20}
            $Key_Management_Service.FirstTwenty()
        }
        '4' {
            New-Object –TypeName PSObject
            $OAlerts = Get-EventLog -LogName OAlerts
            Add-Member -InputObject $OAlerts -MemberType ScriptMethod -Name "FirstTwenty" -Value {Get-EventLog -LogName OAlerts | Sort-Object -Descending | Select-Object -First 20}
            $OAlerts.FirstTwenty()
        }
        '5' {
            New-Object –TypeName PSObject
            $Security = Get-EventLog -LogName Security
            Add-Member -InputObject $Security -MemberType ScriptMethod -Name "FirstTwenty" -Value {Get-EventLog -LogName Security | Sort-Object -Descending | Select-Object -First 20}
            $Security.FirstTwenty()
        }
        '6' {
            New-Object –TypeName PSObject
            $System = Get-EventLog -LogName System
            Add-Member -InputObject $System -MemberType ScriptMethod -Name "FirstTwenty" -Value {Get-EventLog -LogName System | Sort-Object -Descending | Select-Object -First 20}
            $System.FirstTwenty()
        }
        '7' {
            New-Object –TypeName PSObject
            $Windows_PowerShell = Get-EventLog -LogName 'Windows PowerShell'
            Add-Member -InputObject $Windows_PowerShell -MemberType ScriptMethod -Name "FirstTwenty" -Value {Get-EventLog -LogName 'Windows PowerShell' | Sort-Object -Descending | Select-Object -First 20}
            $Windows_PowerShell.FirstTwenty()
        }

        '8' {
            IF ($R -like [int]8) {
                Pause
                Break
            }#If
        }#8
        
    }#Switch

    IF ($R -eq 1 -or $R -eq 2 -or $R -eq 3 -or $R -eq 4 -or $R -eq 5 -or $R -eq 6 -or $R -eq 7) {
        & $MyInvocation.MyCommand
    }
    
    ELSEIF ($R -eq [int]8) {
        Break           
    }
}#Function
GetEventLogs
