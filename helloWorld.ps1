#init
Add-AzureAccount
Select-AzureSubscription msdn
Switch-AzureMode -Name AzureResourceManager

#vars
$abk01 = "ABK01"

#group
New-AzureResourceGroup -Name $abk01 -Location "West Europe" -Force

#deployment
New-AzureResourceGroupDeployment `
    -Name "ABK01_HELLO01" `
    -ResourceGroupName $abk01 `
    -TemplateFile "https://raw.githubusercontent.com/mshudx/AzureResourceManager-Examples/master/helloWorld.json"