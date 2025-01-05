resource "azurerm_resource_group" "rg" {
    name = "${var.name}RG"
    location = var.location
}
