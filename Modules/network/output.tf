output "spoke_subnet_web_id" {
  value       = "${azurerm_subnet.web-subnet.id}"
}

output "vnet_subnet_id" {
  value = {
    hub_fw_id = "${azurerm_subnet.fw-subnet.id}"
    spoke_web_id ="${azurerm_subnet.web-subnet.id}"
    spoke_app_id = "${azurerm_subnet.app-subnet.id}"
    spoke_data_id = "${azurerm_subnet.data-subnet.id}"
   }
}
