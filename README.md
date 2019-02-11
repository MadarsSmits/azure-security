# azure-security
Azure Workshop "Valis v0.5"

---------------
Template "template.json"
---------------
```
New-AzureRmResourceGroup -Name valis5 -Location "West Europe" -Verbose
```
```
New-AzureRmResourceGroupDeployment -ResourceGroupName "valis5" -TemplateUri "https://raw.githubusercontent.com/MadarsSmits/azure-security/master/template.json" -Verbose
```

- valis5-VM1
- valis5-VM1-OS-DISK
- valis5-VM1-NIC
- valis5-VM1-PublicIP
- valis5-NSG
- valis5-VNET
- valis5-HA
- valis5-VM1 Extention (Installs IIS Web Server + Management)