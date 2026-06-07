# 1. Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space

}

# 2. Subnet A: Dedicated for AI Foundry & Private Endpoints (Secure Backend Layer)
resource "azurerm_subnet" "ai_foundry_subnet" {
  name                 = var.ai_foundry_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.ai_foundry_subnet_prefix

  private_endpoint_network_policies = "Enabled"

  service_endpoints = [
    "Microsoft.Storage",
    "Microsoft.KeyVault",
    "Microsoft.CognitiveServices" # For Azure OpenAI/AI Foundry
  ]
}


# 3. Subnet B: Dedicated for APIM (Request Handling Layer)
resource "azurerm_subnet" "apim_subnet" {
  name                 = var.apim_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.apim_subnet_prefix
}

