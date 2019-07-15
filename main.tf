module "hub_network"{
    source = "./modules/network"
    resource_group = "${var.hub-resource_group}"
    tags  = "${var.hub-tags}"
    vnet = "${var.hub-vnet}"
    subnet_numbers = "${var.hub-subnet_numbers}"
 

}

/* module "security"{
    source = "./modules/security"
    resourceprefix ="${var.resourceprefix}"
    loc = "${var.loc}"
    tags="${var.tags}"
    vnet_subnet_id = "${module.network.vnet_subnet_id}"
}



module "vm"{
    source = "./modules/compute"
    resource_group = "${var.vmresource_group}"
    vmprofile = "${var.vmprofile}"
    os_image = "${var.os_image}"
    os_profile = "${var.os_profile}" 
    vm_subnet_id = "${module.network.vnet_subnet_id.hub_shrd_svc_id}"
} */