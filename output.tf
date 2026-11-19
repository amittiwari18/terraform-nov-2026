output "rgname" {
  description = "this is the name of the resource group"
  value       = azurerm_resource_group.myrg.name
}

output "location" {
  description = "this is the location of the resource group"
  value       = azurerm_resource_group.myrg.location
}

output "vnet_name" {
  description = "This is the name of the virtual network"
  value       = azurerm_virtual_network.vnet.name
}