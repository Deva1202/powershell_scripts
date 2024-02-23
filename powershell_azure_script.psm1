$resourceGroup = "Cit-Epc-Scm-pr"
$storageAccountName = "citepcsccmprdmonitor"
$tableName= "WADWindowsEventLogsTable"
# get a reference to the storage account and the context
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName
$ctx = $storageAccount.Context
$cloudTable = (Get-AzStorageTable –Name $tableName –Context $ctx).CloudTable
# Filter Query to get all table entities which is less than 14 days from current date time.
$lowerlimit = [DateTime]::Today.AddDays(-14)
[string]$filter = [Microsoft.Azure.Cosmos.Table.TableQuery]::GenerateFilterConditionForDate("Timestamp",[Microsoft.Azure.Cosmos.Table.QueryComparisons]::LessThanOrEqual,$lowerlimit)
#List All Table Entities based on Filter
$CloudTableEntities = Get-AzTableRow -table $cloudTable -CustomFilter $filter
#Remove All Entites
#$CloudTableEntities | Remove-AzTableRow -Table $cloudTable
Write-Host "DATA HAS BEEN DELETED SUCESSFULLY"