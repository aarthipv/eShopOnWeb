param name string
param location string = resourceGroup().location
param tags object = {}

param kind string = ''
param reserved bool = true
param sku object

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  location: location
  tags: tags
  name: name
  sku: sku
  kind: kind
  properties: {
    reserved: reserved
  }
}


output id string = appServicePlan.id
