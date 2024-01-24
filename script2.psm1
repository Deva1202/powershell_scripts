function machinename()
{
hostname
}
function username()
{
whoami
}
function bitservice
{
Get-Service | where {$_.Name -eq 'Bits'}
}


#try and catch block of terminatting and non terminaating errors in powershell

#terminatting error it means we find the error in the shell
try
{
C:Get-Process
}
catch
{
Write-Host 'exception raised then it will be raise'
}