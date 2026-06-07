output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "ai_foundry_subnet_name" {
  value = azurerm_subnet.ai_foundry_subnet.name
}

output "apim_subnet_name" {
  value = azurerm_subnet.apim_subnet.name
}
