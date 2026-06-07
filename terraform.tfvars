resource_group_name      = "rg_ai_foundry"
location                 = "eastus2"
vnet_name                = "vnet-prod-ai-001"
vnet_address_space       = ["10.0.0.0/16"]
ai_foundry_subnet_name   = "sn-prod-aifoundry-001"
ai_foundry_subnet_prefix = ["10.0.2.0/24"]
apim_subnet_name         = "sn-prod-apim-001"
apim_subnet_prefix       = ["10.0.1.0/24"]
