resource "random_string" "search_service_suffix" {
  length  = 8
  special = false
  upper = false
  lower = true
}

resource "random_pet" "search_service_prefix" {
  length = 2
}

resource "azurerm_resource_group" "existing" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_search_service" "search_service" {
  name                = "${random_pet.search_service_prefix.id}-${random_string.search_service_suffix.result}"
  resource_group_name = azurerm_resource_group.existing.name
  location            = azurerm_resource_group.existing.location
  sku                 = var.search_service_sku
  partition_count     = var.partition_count
  replica_count       = var.replica_count
}

/* resource "azurerm_search_service" "search_service" {
  name                = var.search_service_name
  resource_group_name = azurerm_resource_group.existing.name
  location            = azurerm_resource_group.existing.location

  sku {
    name = var.search_service_sku
  }

  partition_count = var.partition_count
  replica_count   = var.replica_count
}
*/

