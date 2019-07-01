resource "azurerm_resource_group" "vnetrg" {
    name = "core-rg"
    location = "${var.loc}"
    tags = "${var.tags}"
}

resource "azurerm_public_ip" "VPNPublicIP"{
    name = "vpnGatewayPublicIp"
    resource_group_name = "${azurerm_resource_group.vnetrg.name}"
    location = "${azurerm_resource_group.vnetrg.location}"
    allocation_method = "Dynamic"
}

resource "azurerm_virtual_network" "core"
{
    name = "${var.resourceprefix}-core-vnet"
    resource_group_name = "${azurerm_resource_group.vnetrg.name}"
    location = "${azurerm_resource_group.vnetrg.location}"
    address_space = "${var.ipaddress}"

 subnet {
    name           = "GatewaySubnet"
    address_prefix = "10.1.0.0/24"
  }

  subnet {
    name           = "training"
    address_prefix = "10.1.1.0/24"
  }

  subnet {
    name           = "dev"
    address_prefix = "10.1.2.0/24"
  }
}
