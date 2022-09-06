resource "azurerm_virtual_network" "myterraformnetwork" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = azurerm_resource_group.myterraformGroup.name
  address_space       = ["10.0.0.0/16"]
}
resource "azurerm_subnet" "myterraformsubnet" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.myterraformGroup.name
  virtual_network_name = azurerm_virtual_network.myterraformnetwork.name
  address_prefixes     = ["10.0.1.0/24"]
}