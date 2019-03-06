# azure-security
Azure Workshop "Valis v0.5"

---------------
Template "template.json"
---------------
```
New-AzureRmResourceGroup -Name valis5 -Location "West Europe" -Verbose
```
```
$objectID = @{objectID=(Get-AzureRmADUser)[0].Id}
```
```
New-AzureRmResourceGroupDeployment -ResourceGroupName "valis5" -TemplateUri "https://raw.githubusercontent.com/MadarsSmits/azure-security/master/template.json" -TemplateParameterObject $objectID -Verbose
```

- valis5-VM1
- valis5-VM1-OS-DISK
- valis5-VM1-NIC
- valis5-VM1-PublicIP
- valis5-NSG
- valis5-VNET
- valis5-qjlnmau2gdwqe

```
Get-AzureRmRoleDefinition | Select-Object Name
```
```
(Get-AzureRmRoleDefinition -Name 'Reader').Actions
```
```
(Get-AzureRmRoleDefinition -Name 'Virtual Machine Contributor').Actions
```
```
wget https://raw.githubusercontent.com/MadarsSmits/azure-security/master/Create-CustomeRBAC.ps1
```
```
Get-AzRoleDefinition -Scope "/subscriptions/$subscriptionID" | ? {$_.IsCustom -eq $true} | FT Name, IsCustom // Show Custom Role
```
```
Get-AzRoleDefinition -Scope "/subscriptions/$subscriptionID" "Virtual Machine Operator" | Remove-AzRoleDefinition -Scope "/subscriptions/$subscriptionID" // Delete Custom Role
```
```
https://raw.githubusercontent.com/MadarsSmits/azure-security/master/ARMpolicy.json
```
```
wget https://raw.githubusercontent.com/MadarsSmits/azure-security/master/encrypt-vm.ps1
```