






resource "azurerm_network_interface" "example" {
  for_each = var.nic
  name                = each.value.nicname
  location            = data.azurerm_resource_group.datarg.location
  resource_group_name = data.azurerm_resource_group.datarg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}