module "resource_group" {
    source = "../modules/RG"
  rga=var.rga
}
module "vnet" {
  
  source = "../modules/vnet"
  vnet = var.vnet
}