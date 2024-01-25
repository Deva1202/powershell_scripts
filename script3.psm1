
$key = New-Object Byte[] 32
[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($key)
$key = Out-File C:\ps\aes.key
(get-credential).Password | ConvertFrom-SecureString -Key (get-content c:\ps\aes.key) | Set-Content "c:\ps\password.txt"
$password = Get-Content C:\ps\password.txt |ConvertTo-SecureString -Key (Get-Content C:\ps\aes.key)
$credential = New-Object System.Management.Automation.PSCredential("appuser",$password)
Get-WmiObject -Class win32_operatingsystem -ComputerName localhost -Credential $credential 