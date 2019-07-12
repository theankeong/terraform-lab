variable "subnets" {
  default = [
    {
      name   = "a"
      number = 1
    },
    {
      name   = "b"
      number = 2
    },
    {
      name   = "c"
      number = 3
    },
  ]
}

resource "azurerm_resource_group" "vnetrg" {
    name = "${var.resource_group.name}"
    location = "${var.resource_group.location}"
}

resource "azurerm_virtual_network" "vnet" {  
    name = "${var.vnet.name}"
    resource_group_name = "${azurerm_resource_group.vnetrg.name}"
    location = "${azurerm_resource_group.vnetrg.location}"
    address_space = "${var.vnet.ipaddress}"  
}


for_each = [for s in ""]{}