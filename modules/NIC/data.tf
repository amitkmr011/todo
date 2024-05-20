data "azurerm_resource_group" "datarg" {
  name = "amitrg3"

}
data "azurerm_subnet" "example" {
  name                 = "fnsubnet"
  virtual_network_name = "fevnet"
  resource_group_name  = "amitrg3"
}
