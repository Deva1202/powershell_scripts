Get-Service
Get-service | select-object Name,Status,DisplayName |where-object {$.name -eq 'dcsvc'}

Get-service | select-object name,displayname,status|where-object {$_.name -eq 'SQLBrowser'} | Stop-Service


Get-ChildItem -Path C:\ProgramData

ls |Select -First 10

ls |Select -Unique Name


ls |Select -Last 10 | Select-Object Length,Name

ls |Select-Object Length,Name,Mode |Where-Object {$_.Length -eq '30720'}|Where-Object {$_.Name -eq 'DeviceEject.exe'}

ls |Select-Object Length,Name,Mode |Where-Object {$_.Length -eq '30720' -and $_.Name -eq 'DeviceEject.exe'}




function sum()
{ 
    $a = 50
    $b = 60
    $c = $a +$b
    Write-Host "sum of two numbers is a and b:"$c
}


function sum([int]$a,[int]$b)
{ 
    $c = $a +$b
    Write-Host "sum of two numbers is a and b:"$c
}
sum -a 10 -b 30


function checkos($os)
{
if($os -eq 'win