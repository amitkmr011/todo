

resource "azurerm_public_ip" "example" {
  for_each = toset(var.pip)
  name                = each.value
  resource_group_name = data.azurerm_resource_group.datarg.name
  location            = data.azurerm_resource_group.datarg.location
  allocation_method   = "Static"  
  sku = "Standard"

  tags = {
    environment = "Production"
  }
}






