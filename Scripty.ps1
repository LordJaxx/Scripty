## set-executionpolicy Unrestricted
$start = function Show-Menu {
    
        $Title = 'YOU ARE ABOUT TO USE SCRIPTY CREATED BY LORDJAXX HAVE FUN'
   
    Clear-Host
    Write-Host "|=================================== $Title ====================================|"
    
    Write-Host "|1. Audit policies for windows 10 because people cannot be trusted.                                                                      |"
    Write-Host "|2: Audit policies for windows server 2019 because people still cannot be trusted.                                                       |"
    Write-Host "|3: Password policies because people are dumb.                                                                                           |"
    Write-Host "|4: That one thing nobody does... updates...                                                                                             |"
    Write-Host "|5: We didn't start the firewall.                                                                                                        |"
    Write-Host "|6: Rename Administrator and Guest to fun names.                                                                                         |"
    Write-Host "|7: Delete unwanted users.                                                                                                               |"
    Write-Host "|8: New passwords for everyone! (Make sure to do this after '6' please)                                                                  |"
    Write-Host "|9: Take users on/off groups.                                                                                                            |"
    Write-Host "|10: All of the above for windows 10.                                                                                                    |"
    Write-Host "|11: All of the above for windows server 2019. (same warning as number 9, just make sure you really want to do this, it is not advised)  |"
    Write-Host "|Q: Press 'Q' to quit.                                                                                                                   |"
    Write-Host "|========================================================================================================================================|"
    Write-Host " "
    Write-Host " "
}
do
 {
    Show-Menu
    $selection = Read-Host "What do you want to do?"
    switch ($selection)
    {
      '1' {
    auditpol.exe /set /category:"Account Logon" /failure:enable /success:enable
    auditpol.exe /set /category:"Account Management" /failure:enable /success:enable
    auditpol.exe /set /category:"Logon/Logoff" /failure:enable /success:enable
    auditpol.exe /set /category:"Policy Change" /failure:enable /success:enable
    auditpol.exe /set /category:"Detailed Tracking" /failure:enable /success:enable
    auditpol.exe /set /category:"System" /failure:enable /success:enable

    } '2' {
    auditpol.exe /set /category:* /failure:enable /success:enable

    } '3' {
    net accounts /minpwage:30
    net accounts /maxpwage:90
    net accounts /minpwlen:16
    net accounts /uniquepw:5
    net accounts /lockoutthreshold:5
    net accounts /lockoutduration:30
    net accounts /lockoutwindow:30

    } '4' {
    REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v AUOptions /t REG_DWORD /d 4 /f 

    } '5' {
    Set-NetFirewallProfile -Enabled True

    } '6' {
    Rename-LocalUser -Name "Administrator" -NewName "Cisco"
    Rename-LocalUser -Name "Guest" -NewName "Rocks"
    
    } '7' {
    do {
      Get-LocalUser | Out-Host
      $ans = Read-Host "Is a user being bad? If answer is 'no', you will return to the main menu."
      $bad_user = Read-Host "Which user needs deleting?"
      Remove-LocalUser -name $bad_user
    } until ($ans -eq "no")
    
    } '8' {
    net user Cisco CyberPatr!ot2023!
    net user Rocks CyberPatr!ot2023!
    do {
      Get-LocalUser | Out-Host
      $answer = Read-Host "Does a user need a new password? If answer is 'no', you will return to the main menu."
      $User = Read-Host "Which user needs a new password?"
      Set-LocalUser -Name $User -Password (ConvertTo-SecureString -AsPlainText "CyberPatr!ot2023!" -Force)
    } until ($answer -eq 'no')

    } '9' {
      do {
        Get-LocalUser | Out-Host
        $x = Read-Host "Does a user need to be added to a group? If answer is 'no', you will return to the main menu."
        if ($x -eq 'no') {
      Break
        }
        $y = Read-Host "Which group needs a new user?"
        $z = Read-Host "Which users need to be added to this group? Please separate users with a comma, otherwise this will fail."
        
        Add-LocalGroupMember -Group $y -Member ($z) -Verbose
      } until ($x -eq 'no')

      do {
        $a = Read-Host "Does a user need to be removed from a group? If answer is 'no', you will return to the main menu."
        if ($a -eq 'no') {
      Break
        }
        $b = Read-Host "Which group needs a user removed?"
        Get-LocalGroup $b | Out-Host
        $c = Read-Host "Which user needs to be removed?"
        Remove-LocalGroupMember -Group $b -Member ($c) -Verbose
      } until ($a -eq 'no')
    } '10' {
    auditpol.exe /set /category:"Account Logon" /failure:enable /success:enable
    auditpol.exe /set /category:"Account Management" /failure:enable /success:enable
    auditpol.exe /set /category:"Logon/Logoff" /failure:enable /success:enable
    auditpol.exe /set /category:"Policy Change" /failure:enable /success:enable
    auditpol.exe /set /category:"Detailed Tracking" /failure:enable /success:enable
    auditpol.exe /set /category:"System" /failure:enable /success:enable

    net accounts /minpwage:30
    net accounts /maxpwage:90
    net accounts /minpwlen:16
    net accounts /uniquepw:5
    net accounts /lockoutthreshold:5
    net accounts /lockoutduration:30
    net accounts /lockoutwindow:30

    REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v AUOptions /t REG_DWORD /d 3 /f 

    Set-NetFirewallProfile -Enabled True

    Rename-LocalUser -Name "Administrator" -NewName "Cisco"
    Rename-LocalUser -Name "Guest" -NewName "Rocks"

    net user Cisco CyberPatr!ot2022
    net user Rocks CyberPatr!ot2022
    
    do {
      Get-LocalUser | Out-Host
      $ans = Read-Host "Is a user being bad? If answer is 'no', you will return to the main menu."
      $bad_user = Read-Host "Which user needs deleting?"
      Remove-LocalUser -name $bad_user
    } until ($ans -eq "no")

    do {
      Get-LocalUser | Out-Host
      $answer = Read-Host "Does a user need a new password? If answer is 'no', you will return to the main menu."
      $User = Read-Host "Which user needs a new password?"
      Set-LocalUser -Name $User -Password (ConvertTo-SecureString -AsPlainText "CyberPatr!ot2023!" -Force)
    } until ($answer -eq 'no')

    do {
      Get-LocalUser | Out-Host
      $x = Read-Host "Does a user need to be added to a group? If answer is 'no', you will return to the main menu."
      if ($x -eq 'no') {
    Break
      }
      $y = Read-Host "Which group needs a new user?"
      Get-LocalGroup $y | Out-Host
      $z = Read-Host "Which users need to be added to this group? Please separate users with a comma, otherwise this will fail."
      

      Add-LocalGroupMember -Group $y -Member ($z) -Verbose
    } until ($x -eq 'no')

    do {
      $a = Read-Host "Does a user need to be removed from a group? If answer is 'no', you will return to the main menu."
      if ($a -eq 'no') {
    Break
      }
      $b = Read-Host "Which group needs a user removed?"
      Get-LocalGroup $b | Out-Host
      $c = Read-Host "Which user needs to be removed?"
      Remove-LocalGroupMember -Group $b -Member ($c) -Verbose
    } until ($a -eq 'no')

    } '11' {
    auditpol.exe /set /category:* /failure:enable /success:enable

    net accounts /minpwage:30
    net accounts /maxpwage:90
    net accounts /minpwlen:16
    net accounts /uniquepw:5
    net accounts /lockoutthreshold:5
    net accounts /lockoutduration:30
    net accounts /lockoutwindow:30

    REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v AUOptions /t REG_DWORD /d 3 /f 

    Set-NetFirewallProfile -Enabled True

    Rename-LocalUser -Name "Administrator" -NewName "Cisco"
    Rename-LocalUser -Name "Guest" -NewName "Rocks"

    net user Cisco CyberPatr!ot2023!
    net user Rocks CyberPatr!ot2023!
    
    do {
      Get-LocalUser | Out-Host
      $x = Read-Host "Does a user need to be added to a group? If answer is 'no', you will return to the main menu."
      if ($x -eq 'no') {
    Break
      }
      $y = Read-Host "Which group needs a new user?"
      $z = Read-Host "Which users need to be added to this group? Please separate users with a comma, otherwise this will fail."
      
      Add-LocalGroupMember -Group $y -Member ($z) -Verbose
    } until ($x -eq 'no')

    do {
      $a = Read-Host "Does a user need to be removed from a group? If answer is 'no', you will return to the main menu."
      if ($a -eq 'no') {
    Break
      }
      $b = Read-Host "Which group needs a user removed?"
      Get-LocalGroup $b | Out-Host
      $c = Read-Host "Which user needs to be removed?"
      Remove-LocalGroupMember -Group $b -Member ($c) -Verbose
    } until ($a -eq 'no')

    }
    }
    pause
 }
 until ($selection -eq 'q')
