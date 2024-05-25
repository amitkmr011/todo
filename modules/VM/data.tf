data "azurerm_resource_group" "datarg" {
  name = "amitrg3"
}



data "azurerm_network_interface" "datanic" {
  for_each = var.vms
  name                = each.value.nic
  resource_group_name = "amitrg3"
}
data "azurerm_subnet" "example" {
  for_each = var.vms
  name                 =each.value.subnet
  resource_group_name  = "amitrg3"
   virtual_network_name = "fevnet"
}
