variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type        = string
  description = "Vnet name"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "vnet address space"
}

variable "ai_foundry_subnet_name" {
  type        = string
  description = "AI Foundry Subnet name"
}

variable "ai_foundry_subnet_prefix" {
  type        = list(string)
  description = "AI Foundry Subnet Address space"
}

variable "apim_subnet_name" {
  type        = string
  description = "APIM Subnet name"
}

variable "apim_subnet_prefix" {
  type        = list(string)
  description = "APIM Subnet Address space"
}

variable "foundry_storage_account_name" {
  type        = string
  description = "storage account name"
}

variable "foundry_key_vault_name" {
  type        = string
  description = "foundry_key_vault_name"
}
