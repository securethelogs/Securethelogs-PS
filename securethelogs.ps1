
$logo = @(

"  _________                                   __  .__           .__                       ",
" /   _____/ ____   ____  __ _________   _____/  |_|  |__   ____ |  |   ____   ____  ______",
" \_____  \_/ __ \_/ ___\|  |  \_  __ \_/ __ \   __\  |  \_/ __ \|  |  /  _ \ / ___\/  ___/",
" /        \  ___/\  \___|  |  /|  | \/\  ___/|  | |   Y  \  ___/|  |_(  <_> ) /_/  >___ \ ",
"/_______  /\___  >\___  >____/ |__|    \___  >__| |___|  /\___  >____/\____/\___  /____  >",
"        \/     \/     \/                   \/          \/     \/           /_____/     \/  ",
""
"Creator: https://securethelogs.com / @securethelogs",
"")

Write-Output ""
$logo


    Write-Output "Please select one of the following:"
    Write-Output ""

    Write-Output " -- Securethelog Scripts: --"
    Write-Output ""

    Write-Output "Option 1: PSpanner - Network Scanner"
    Write-Output "Option 2: PSdnsresolver - Resolve IP > DNS"
    Write-Output "Option 3: Bluechecker - Audit Powershell"
    Write-Output "Option 4: PSBruteZip - Brute Force ZIP Files"
    Write-Output "Option 5: Powersosh - Search For Usernames Online (OSINT)"
    Write-Output "Option 6: ZorkAzure - Scan For Azure Resources"

    Write-Output ""
    Write-Output " -- Other Options: -- "
    Write-Output ""

    Write-Output "Option 7: Get Kerberos Ticket"
    Write-Output "Option 8: Enter Remote Powershell Session (WinRM)"
    Write-Output ""
    
    
    [string]$option = Read-Host -Prompt "Option:"

    if ($option -eq "1"){powershell –nop –c “iex(New-Object Net.WebClient).DownloadString(‘https://raw.githubusercontent.com/securethelogs/PSpanner/master/PSpanner.ps1’)”}
    if ($option -eq "2"){powershell –nop –c “iex(New-Object Net.WebClient).DownloadString(‘https://raw.githubusercontent.com/securethelogs/PSdnsresolver/master/PSdnsresolver.ps1’)”}
    if ($option -eq "3"){powershell –nop –c “iex(New-Object Net.WebClient).DownloadString(‘https://raw.githubusercontent.com/securethelogs/Bluechecker/master/Bluechecker.ps1’)”}
    if ($option -eq "4"){powershell –nop –c “iex(New-Object Net.WebClient).DownloadString(‘https://raw.githubusercontent.com/securethelogs/PSBruteZip/master/PSBruteZip.ps1’)”}
    if ($option -eq "5"){powershell –nop –c “iex(New-Object Net.WebClient).DownloadString(‘https://raw.githubusercontent.com/securethelogs/Powersosh/master/powersosh.ps1’)”}
    if ($option -eq "6"){powershell –nop –c “iex(New-Object Net.WebClient).DownloadString(‘https://raw.githubusercontent.com/securethelogs/ZorkAzure/master/zorkazure.ps1’)”}
    
    
    # Other Options....

    if ($option -eq "7"){[System.Security.Principal.WindowsIdentity]::GetCurrent()}
    if ($option -eq "8"){
    
    Write-Output "`n"
$comp = Read-Host -Prompt "Enter The Computer Name or IP"
$testcont = test-netconnection -ComputerName "$comp" -CommonTCPPort WINRM -InformationLevel Quiet



if ($testcont -eq "True"){

#If successful, write message
Write-Output "`n"
Write-Output "Services Appears To Be Running...."
Write-Output "Attempting To Connect To $comp.............."
Write-Output "`n"

Enter-PSSession -ComputerName $comp


} 

#If failed, write message

elseif ($results -eq "False" -or $results -contains "failed") {
Write-Output "`n"
Write-Output "Failed To Connect To $comp"


}
    }


    
    
    else {
    
    #Do Nothing


    }
