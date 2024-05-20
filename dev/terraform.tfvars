rga = {
  rg1 = {
    rgname   = "amitrg3"
    location = "east us"
    rgname   = "amitrg4"
    location = "east us"
  }
}

vnet = {

  v1 = {

    vnet     = "fevnet"
    subnet   = "fnsubnet"
    address  = ["10.0.0.0/16"]
    rgname   = "amitrg3"
    location = "east us"
    subadd   = "10.0.0.0/24"

  }
}

nsg = {

  nsg1 = {

    nsgname = "fensg"
    spr     = "80"
    security_rule="vmsecurityrule"
  }

}

nic ={

  nic1={

    nicname="fenic"
  }
}

  
