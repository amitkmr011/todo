terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.102.0"
    }
  }
}

provider "azurerm" {
    features {
      
    }
 
}
terraform {
  backend "azurerm" {
    resource_group_name  = "amitrg"
    storage_account_name = "amitstorage12"                   
    container_name       = "tfstate"                      
    key                  = "prod.terraform.tfstate"  
  }
}