module "resource_group" {
  source = "../modules/RG"
  rga    = var.rga
}
module "vnet" {

  source = "../modules/vnet"
  vnet   = var.vnet
}


module "nsg" {

  source     = "../modules/NSG"
  nsg        = var.nsg
  depends_on = [module.vnet]

}
