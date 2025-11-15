param storageName string
param location string = resourceGroup().location
param skuName string = 'Standard_LRS'

resource storageAccount 'Microsoft.Storage/storageAccounts@2025-01-01' = {
  name:storageName
  location: location 
  sku: {
    name:skuName
  }
  kind: 'StorageV2'
}
