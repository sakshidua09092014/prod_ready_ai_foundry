output "app_insights_name" {
  value       = azurerm_application_insights.app_insights.name
  description = "The name of the App insight."
}

output "app_insights_id" {
  value       = azurerm_application_insights.app_insights.id
  description = "The ID of the App insights"
}
