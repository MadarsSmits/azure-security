# azure-security
Azure Workshop "Valis v0.5"

---------------
Template "template.json"
---------------
```
az group create --name valis1 --location "westeurope" --verbose
```
```
az group deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-iaas/master/template.json --verbose --resource-group valis1 --debug
```

- valis1-VM1
- valis1-VM1-OS-DISK
- valis1-VM1-NIC
- valis1-VM1-PublicIP
- valis1-NSG
- valis1-VNET
- valis1-HA
- valis1-VM1 Extention (Installs IIS Web Server + Management)