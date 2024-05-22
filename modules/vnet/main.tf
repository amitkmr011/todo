resource "azurerm_virtual_network" "example" {
  for_each            = var.vnet
  name                = each.value.vnet
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  address_space       = each.value.address


  dynamic "subnet" {
    for_each = var.subnet
    content {
      name =subnet.value.subnet
    address_prefix = subnet.value.subadd
  }
  }
}








