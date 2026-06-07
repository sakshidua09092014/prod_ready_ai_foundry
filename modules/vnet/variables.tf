
variable "vnet_name" {
  type        = string
  description = "Vnet name"
}

variable "vnet_location" {
  type        = string
  description = "Azure region"
}
variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "vnet address space"
}

variable "ai_foundry_subnet_name" {
  type        = string
  description = "AI Foundry Subnet ka naam"
}

variable "ai_foundry_subnet_prefix" {
  type        = list(string)
  description = "AI Foundry Subnet Address space"
}

variable "apim_subnet_name" {
  type        = string
  description = "APIM Subnet ka naam"
}

variable "apim_subnet_prefix" {
  type        = list(string)
  description = "APIM Subnet Address space"
}

