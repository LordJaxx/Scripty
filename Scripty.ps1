## set-executionpolicy Unrestricted
$start = function Show-Menu {
    
        $Title = 'YOU ARE ABOUT TO USE SCRIPTY CREATED BY JACKSON GAMSBY HAVE FUN'
   
    Clear-Host
    Write-Host "|=================================== $Title ====================================|"
    
    Write-Host "|1. Audit policies for windows 10 because people cannot be trusted.                                                                      |"
    Write-Host "|2: Audit policies for windows server 2019 because people still cannot be trusted.                                                       |"
    Write-Host "|3: Password policies because people are dumb.                                                                                           |"
    Write-Host "|4: That one thing nobody does... updates...                                                                                             |"
    Write-Host "|5: We didn't start the firewall.                                                                                                        |"
    Write-Host "|6: Rename Administrator and Guest to fun names.                                                                                         |"
    Write-Host "|7. New passwords for everyone! (make sure to put the usernames in the script and to do this after '6' please)                           |"
    Write-Host "|8. Install 7zip                                                                                                                         |"
    Write-Host "|9. Install Firefox                                                                                                                      |"
    Write-Host "|10. Install Notepad++                                                                                                                   |"
    Write-Host "|11. Install vlc                                                                                                                         |"
    Write-Host "|12. All of the above for windows 10. (MAKE SURE YOU ARE CERTAIN YOU WISH TO DO THIS AND THAT PROPER USERNAMES ARE IN SCRIPT)            |"
    Write-Host "|13. All of the above for windows server 2019. (same warning as number 8, just make sure you really want to do this, it is not advised)  |"
    Write-Host "|Q: Press 'Q' to quit.                                                                                                                   |"
    Write-Host "|========================================================================================================================================|"
    Write-Host ""
    Write-Host ""
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
    Rename-LocalUser -Name "Administrator" -NewName "Keenan"
    Rename-LocalUser -Name "Guest" -NewName "Adrian"

    } '7' {
    net user Keenan CyberPatr!ot2022
    net user Adrian CyberPatr!ot2022
    Get-LocalUser | Out-Host
    $User = Read-Host "Which user needs a new password?"
    Set-LocalUser -Name $User -Password (ConvertTo-SecureString -AsPlainText "CyberPatr!ot2022" -Force)

    } '8' {
    Install-Package 7zip -Force
    
    } '9' {
    Install-Package firefox -Force

    } '10' {
    Install-Package notepadplusplus -Force

    } '11' {
    Install-Package vlc -Force

    } '12' {
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

    Rename-LocalUser -Name "Administrator" -NewName "Keenan"
    Rename-LocalUser -Name "Guest" -NewName "Adrian"

    net user Keenan CyberPatr!ot2022
    net user Adrian CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022

    Install-Package 7zip, firefox, notepadplusplus, vlc -Force

    } '13' {
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

    Rename-LocalUser -Name "Administrator" -NewName "Keenan"
    Rename-LocalUser -Name "Guest" -NewName ""

    user Keenan CyberPatr!ot2022
    net user Adrian CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022
    net user "USERNAME" CyberPatr!ot2022

    Install-Package 7zip, firefox, notepadplusplus, vlc -Force

    }
    }
    pause
 }
 until ($selection -eq 'q')