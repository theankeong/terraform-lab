module "network"{
    source = "./modules/network"
    resourceprefix ="${var.resourceprefix}"
    loc = "${var.loc}"
    tags="${var.tags}"
    hub_ipaddress = "${var.hub_ipaddress}"
    spoke_ipaddress = "${var.spoke_ipaddress}"
}