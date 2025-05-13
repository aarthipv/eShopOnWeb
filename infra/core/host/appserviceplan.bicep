param name string
param location string = resourceGroup().location
param tags object = {}

param kind string = ''
param reserved bool = true
param sku object

rresource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  @description: 'App Service Plan resource'
  @batchSize: 1
  
  parent: parentResource  # Optional, if you have a parent resource
  scope: resourceGroup()  # Optional, define the scope of the resource

  name: name
  location: location
  extendedLocation: extendedLocation  # Optional, if required for your use case
  zones: zones  # Optional, if you are deploying to specific availability zones

  sku: sku
  kind: kind
  scale: scale  # Optional, if scaling configuration is required
  plan: plan  # Optional, if using a specific plan for the App Service Plan

  identity: identity  # Optional, if you want to configure a managed identity
  dependsOn: dependsOn  # Optional, if there are dependencies on other resources
  
  tags: tags
  properties: {
    reserved: reserved
  }
}


output id string = appServicePlan.id
