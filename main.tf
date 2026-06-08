data "azurerm_client_config" "current" {}
module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "vnet" {
  source                   = "./modules/vnet"
  vnet_name                = var.vnet_name
  vnet_location            = module.resource_group.resource_group_location
  resource_group_name      = module.resource_group.resource_group_name
  vnet_address_space       = var.vnet_address_space
  ai_foundry_subnet_name   = var.ai_foundry_subnet_name
  ai_foundry_subnet_prefix = var.ai_foundry_subnet_prefix
  apim_subnet_name         = var.apim_subnet_name
  apim_subnet_prefix       = var.apim_subnet_prefix

}

module "foundry_storage_account" {
  source               = "./modules/storage_account"
  storage_account_name = "${var.foundry_storage_account_name}${substr(sha256(data.azurerm_client_config.current.subscription_id), 0, 6)}"
  resource_group_name  = module.resource_group.resource_group_name
  location             = module.resource_group.resource_group_location
}

module "foundry_key_vault" {
  source              = "./modules/key_vault"
  key_vault_name      = "${var.foundry_key_vault_name}${substr(sha256(data.azurerm_client_config.current.subscription_id), 0, 6)}"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  tenant_id           = data.azurerm_client_config.current.tenant_id
  object_id           = data.azurerm_client_config.current.object_id
}
