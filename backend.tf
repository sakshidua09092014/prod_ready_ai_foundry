# terraform {
#   backend "azurerm" {

#   }
# }

terraform {
  backend "azurerm" {
    resource_group_name  = "statefile"
    storage_account_name = "terraformbackup9099"
    container_name       = "prod-tfstate"
    key                  = "prod-tfstate.tfstate"
  }
}