$vmRGName = 'AutoStartStop-Demo';
$vmName = 'StartStop-Demo';
$KeyVaultRGName = 'KeyVault-Demo';
$KeyVaultName = 'SQUALIO-KeyVault';
$KeyVault = Get-AzureRmKeyVault -VaultName $KeyVaultName -ResourceGroupName $KeyVaultRGName;
$diskEncryptionKeyVaultUrl = $KeyVault.VaultUri;
$KeyVaultResourceId = $KeyVault.ResourceId;

Set-AzureRmVMDiskEncryptionExtension -ResourceGroupName $vmRGName -VMName $vmName -DiskEncryptionKeyVaultUrl $diskEncryptionKeyVaultUrl -DiskEncryptionKeyVaultId $KeyVaultResourceId