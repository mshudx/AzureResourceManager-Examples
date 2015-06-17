$resource = Get-AzureResource -ResourceName "abk01demo1" -ResourceGroupName "abk01"
Get-AzureResourceLog -ResourceId $resource.ResourceId -StartTime (Get-Date).AddHours(-1) -EndTime (Get-Date)

Get-AzureResourceGroupLog -ResourceGroup "ABK01" -StartTime (Get-Date).AddHours(-1) -EndTime (Get-Date)

Get-AzureSubscriptionIdLog -StartTime (Get-Date).AddHours(-1) -EndTime (Get-Date)
