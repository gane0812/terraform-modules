terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

resource "random_id" "rand" {
  byte_length = 5
}

resource "azurerm_storage_account" "storage" {
  name                     = "${var.name}${random_id.rand.hex}"
  resource_group_name = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}