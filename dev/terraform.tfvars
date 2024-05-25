rga = {
  rg1 = {
    rgname   = "amitrg3"
    location = "east us"
    rgname   = "amitrg4"

  }
}

vnet = {

  v1 = {

    vnet     = "fevnet"
    address  = ["10.0.0.0/16"]
    rgname   = "amitrg3"
    location = "east us"
  }

}
subnet = {

  s1 = {
    subnet = "frontend"
    subadd = "10.0.0.0/24"
  }
  s2 = {
    subnet = "backend"
    subadd = "10.0.1.0/24"
  }
  s3 = {
    subnet = "AzureBastionSubnet"
    subadd = "10.0.2.0/24"
  }
}

nsg = {

  nsg1 = {

    nsgname       = "fensg"
    spr           = "80"
    security_rule = "vmsecurityrule"
  }

}

nic = {

  nic1 = {

    nicname = "fenic"
    subnet  = "frontend"
  }
  nic2 = {
    nicname = "bcnic"
    subnet  = "backend"
  }
  nic3 = {

    nicname = "fenic2"
    subnet  = "frontend"
  }
}


pip = ["LBPIP", "BASTIONPIP"]


bastion = "Bastion_Host"

vms={


  vm1={

    name ="frontendvm"
    user ="amitkmr"
    nic="fenic"
    subnet="frontend"
  }
}
