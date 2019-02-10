$vmRGName = 'AutoStartStop-Demo';
$vmName = 'StartStop-Demo';
$KeyVaultRGName = 'KeyVault-Demo';
$KeyVaultName = 'SQUALIO-KeyVault';
$KeyVault = Get-AzureRmKeyVault -VaultName $KeyVaultName -ResourceGroupName $KeyVaultRGName;
$diskEncryptionKeyVaultUrl = $KeyVault.VaultUri;
$KeyVaultResourceId = $KeyVault.ResourceId;

Set-AzureRmKeyVaultAccessPolicy -VaultName $KeyVaultName -ResourceGroupName $KeyVaultRGName -EnabledForDiskEncryption
Set-AzureRmKeyVaultAccessPolicy -VaultName $KeyVaultName -ResourceGroupName $KeyVaultRGName -EnabledForDeployment
Set-AzureRmKeyVaultAccessPolicy -VaultName $KeyVaultName -ResourceGroupName $KeyVaultRGName -EnabledForTemplateDeployment
Set-AzureRmVMDiskEncryptionExtension -ResourceGroupName $vmRGName -VMName $vmName -DiskEncryptionKeyVaultUrl $diskEncryptionKeyVaultUrl -DiskEncryptionKeyVaultId $KeyVaultResourceId -SkipVmBackup