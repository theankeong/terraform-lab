module "network"{
    source = "./modules/network"
    

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