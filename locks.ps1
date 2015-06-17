New-AzureResourceLock `
    -LockName noMoreDelete `
    -LockNotes "no more accidental deletion" `
    -LockLevel CanNotDelete `
    -ResourceGroupName "ABK01"

Get-AzureResourceLock

$resourceGroup = Get-AzureResourceGroup -Name "ABK01"

# :(
Get-AzureResourceLock  -ResourceGroupName "ABK01" -LockName noMoredelete | Remove-AzureResourceLock