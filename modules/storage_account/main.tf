
resource "azurerm_storage_account" "example" {
    for_each = var.storage
  name                     = each.value.storage
  resource_group_name      = data.azurerm_resource_group.datarg.name
  location                 = data.azurerm_resource_group.datarg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}