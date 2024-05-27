module "resource_group" {
  source = "../modules/RG"
  rga    = var.rga
}
module "vnetsubnet" {

  source = "../modules/vnet"
  vnet   = var.vnet
  subnet = var.subnet
  depends_on = [module.resource_group]
}


module "nsg" {

  source     = "../modules/NSG"
  nsg        = var.nsg
  depends_on = [module.vnetsubnet]

}

module "nic" {
  source = "../modules/NIC"
  nic    = var.nic
  depends_on = [ module.vnetsubnet,module.nsg ]

}
 module "pip" {
 source ="../modules/PUBLIC_IP"
 pip=var.pip  
 depends_on = [ module.nic,module.nsg,module.vnetsubnet]
 }

 module "bastion" {
source = "../modules/bastion"
bastion =var.bastion  
depends_on = [ module.pip, module.vnetsubnet ]
 }

module "azurerm_linux_virtual_machine" {
source = "../modules/VM"
vms=var.vms
depends_on = [ module.nic ]
}

module "storage" {
source ="../modules/storage_account"
storage=var.storage  
depends_on = [ module.resource_group,module.azurerm_linux_virtual_machine,module.nic,module.bastion,module.nsg,module.pip,module.vnetsubnet ]
}
 
 