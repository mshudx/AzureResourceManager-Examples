
Get-AzureResource
Get-AzureResourceGroup


Get-AzureResource -TagName "displayName" -TagValue "test"

$tags = New-Object System.Collections.ArrayList;
$tags.Add(@{ Name="owner"; Value="attila"})
$tags.Add(@{ Name="environment"; Value="demo"})

Set-AzureResourceGroup -Name "ABK01" -Tag $tags

Get-AzureResourceGroup -Tag @{Name="owner"; Value="attila"}

New-AzureTag
Get-AzureTag
Remove-AzureTag -Name "owner"