data "azurerm_resource_group" "datarg" {
  name = "amitrg3"

}

data "azurerm_subnet" "subnet" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "fevnet"
  resource_group_name = "amitrg3"
}

data "azurerm_public_ip" "pip" {
  name                = "BASTIONPIP"
  resource_group_name = data.azurerm_resource_group.datarg.name
}
