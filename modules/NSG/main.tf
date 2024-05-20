


resource "azurerm_network_security_group" "example" {
  for_each            = var.nsg
  name                = each.value.nsgname
  location            = data.azurerm_resource_group.datarg.location
  resource_group_name = data.azurerm_resource_group.datarg.name

  dynamic "security_rule" {
    for_each = var.nsg

    content {
      name                       = security_rule.value.security_rule
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = security_rule.value.spr
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}
  
