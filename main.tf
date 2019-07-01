module "network"{
    source = "./modules/network"
    resourceprefix ="${var.resourceprefix}"
    loc = "${var.loc}"
    tags="${var.tags}"
    ipaddress = "${var.ipaddress}"
}