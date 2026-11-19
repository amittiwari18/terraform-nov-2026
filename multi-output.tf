/*
output "instance_network_details" {
  value = {
    for key, pip in azurerm_public_ip.web_pip :
    key => pip.ip_address
  }
}

output "instance_network_internal_details" {
  value = {
    for key, nic in azurerm_network_interface.web_nic : key => {
      nic_name = nic.name
      nic_id   = nic.id

    }
  }
}

output "nic_private_ip_addresses" {
  description = "Private IP addresses of all network interfaces"

  value = {
    for key, nic in azurerm_network_interface.web_nic :
    key => nic.ip_configuration[0].private_ip_address
  }
}
*/