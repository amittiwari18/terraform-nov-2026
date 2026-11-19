/*
resource "azurerm_windows_virtual_machine" "web_vm" {
  for_each = var.subnets

  name                = "${local.resource_name_prefix}-win-vm-${each.key}"
  computer_name       = "win-vm"
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  #size                = "Standard_D4_v5"
  size           = "Standard_F2"
  admin_username = "adminuser"
  admin_password = var.admin_password

  network_interface_ids = [
    azurerm_network_interface.web_nic[each.key].id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
*/