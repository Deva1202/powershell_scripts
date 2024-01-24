function name()
{
param($nme)
Write-Host 'name of the employee is'$nme
}
name('deva')
function address()
{
param($addr)
Write-Host 'address of the host is'$addr
}
function jobdetails()
{
param($details)
Write-Host 'job details list in the company is:'$details
}

address('fci colony')
jobdetails('automation')