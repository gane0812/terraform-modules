terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "d142c4c7-733e-4ee6-9bb4-bcbe829e13c2"
}

module "resourcegroup" {
  source   = "./resourcegroup"
  name     = "moduleblocks-"
  location = "UK south"
}

module "storageaccount" {
  source   = "./storageaccount"
  name     = "moduleblocks"
  location = "east US"
  rgname   = module.resourcegroup.rgnameout

}