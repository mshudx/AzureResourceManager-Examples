#group
New-AzureResourceGroup -Name "ABK01" -Location "West Europe" -Force

#deployment
New-AzureResourceGroupDeployment `
    -Name "ABK01_HELLO01" `
    -ResourceGroupName "ABK01" `
    -TemplateFile "https://raw.githubusercontent.com/mshudx/AzureResourceManager-Examples/master/helloWorld.json"