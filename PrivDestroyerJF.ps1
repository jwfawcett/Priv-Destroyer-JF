


#  ___      _              ___          _                                   __    ___ 
# / _ \_ __(_)_   __      /   \___  ___| |_ _ __ ___  _   _  ___ _ __       \ \  / __\
#/ /_)/ '__| \ \ / /____ / /\ / _ \/ __| __| '__/ _ \| | | |/ _ \ '__|____   \ \/ _\  
#/ ___/| |  | |\ V /_____/ /_//  __/\__ \ |_| | | (_) | |_| |  __/ | |_____/\_/ / /    
#\/    |_|  |_| \_/     /___,' \___||___/\__|_|  \___/ \__, |\___|_|       \___/\/     
#                                                      |___/                           

Write-Host " A quick group of tips about your Windows Privileges written by John Fawcett 
Write-Host "Let us look at your privileges"

$SeManageVolume = $null;
$SeManageVolume = whoami /priv | Select-String -Pattern 'SEManageVolume'
If ($SeManageVolume -ne $null)
{
Write-Host ' You may be able to replace the Printconfig.dll by using the exploit on this website https://github.com/CsEnox/SeManageVolumeExploit ';
}
Else
{
Write-Host "SeManageVolume not found";
}


$SeImpersonatePrivilege = $null;
$SeImpersonatePrivilege = whoami /priv | Select-String -Pattern 'SEImpersonatePrivilege'
If ($SeImpersonatePrivilege -ne $null)
{
Write-Host ' You may be able to use the Juicy Potato exploit. ';
}
Else
{
Write-Host "SeImpersonatePrivilege not found";
}

$SeBackupPrivilege = $null;
$SeBackupPrivilege = whoami /priv | Select-String -Pattern 'SEBackupPrivilege'
If ($SeBackupPrivilege -ne $null)
{
Write-Host ' You may be able to get sensitive backup files. ';
}
Else
{
Write-Host "SeBackupPrivilege not found";
}

$SeRestorePrivilege = $null;
$SeRestorePrivilege = whoami /priv | Select-String -Pattern 'SERestorePrivilege'
If ($SeRestorePrivilege -ne $null)
{
Write-Host ' You may be able to grant write access to system objects, no matter what the ACL ';
}
Else
{
Write-Host "SeRestorePrivilege not found";
}

$SeTakeOwnsershipPrivilege = $null;
$SeTakeOwnsershipPrivilege = whoami /priv | Select-String -Pattern 'SETakeOwnershipPrivilege'
If ($SeTakeOwnershipPrivilege -ne $null)
{
Write-Host ' You may be able to take ownership and grant write access to objects in the system ';
}
Else
{
Write-Host "SeTakeOwnershipPrivilege not found";
}

Write-Host "Thank you to everyone who made research into this. I merely tried to automate looking up privileges and giving tips"
