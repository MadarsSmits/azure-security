# azure-security
Azure Workshop "Valis v0.5"

---------------
Template "template.json"
---------------
```
az group create --name valis5 --location "westeurope" --verbose
```
```
az group deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-security/master/template.json --verbose --resource-group valis5 --debug
```

- valis5-VM1
- valis5-VM1-OS-DISK
- valis5-VM1-NIC
- valis5-VM1-PublicIP
- valis5-NSG
- valis5-VNET
- valis5-HA
- valis5-VM1 Extention (Installs IIS Web Server + Management)