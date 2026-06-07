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