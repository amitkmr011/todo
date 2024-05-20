resource "azurerm_resource_group" "example" {
  for_each = var.rga
  name     = each.value.rgname
  location = each.value.location
}
