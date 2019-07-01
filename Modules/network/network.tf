resource "azurerm_resource_group" "vnetrg" {
    name = "core-rg"
    location = "${var.loc}"
    tags = "${var.tags}"
}

resource "azurerm_virtual_network" "hub-vnet"{  
  name = "${var.resourceprefix}-hub-vnet"
    resource_group_name = "${azurerm_resource_group.vnetrg.name}"
    location = "${azurerm_resource_group.vnetrg.location}"
    address_space = "${var.hub_ipaddress.hub}"

 subnet {
    name           = "GatewaySubnet"
    address_prefix = "${var.hub_ipaddress.gw}"
  }

  subnet {
    name           = "sharedsvc"
     address_prefix = "${var.hub_ipaddress.sharedsvc}"
  }

  subnet {
    name           = "ext_dmz"
    address_prefix = "${var.hub_ipaddress.ext_dmz}"
  }

   subnet {
    name           = "nva"
    address_prefix = "${var.hub_ipaddress.nva}"
  }
}
