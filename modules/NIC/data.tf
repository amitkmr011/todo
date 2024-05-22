data "azurerm_resource_group" "datarg" {
  name = "amitrg3"

}
data "azurerm_subnet" "example" {
  for_each = var.nic
  name                 =each.value.subnet
  virtual_network_name = "fevnet"
  resource_group_name  = "amitrg3"
}
