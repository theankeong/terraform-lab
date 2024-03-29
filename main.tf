module "shared_svc_rg"{
    source = "./modules/resourcegroup"
    resource_group = var.sharedsvc-resource_group
    tags = var.hub-tags
}


module "hub_network"{
    source = "./modules/network"
    resource_group = module.shared_svc_rg.rg
    tags  = var.hub-tags
    vnet = var.hub-vnet
    subnet_numbers = var.hub-subnet_numbers
}


# module "spoke_network"{
#     source = "./modules/network"
#     resource_group = "${var.sharedsvc-resource_group}"
#     tags  = "${var.spoke-tags}"
#     vnet = "${var.spoke-vnet}"
#     subnet_numbers = "${var.spoke-subnet_numbers}"
# }


# module "security"{
#     source = "./modules/security"
#     resource_group = "${var.sharedsvc-resource_group}"
#     tags="${var.tags}"
#     vnet_subnet_id = "${module.network.vnet_subnet_id}"
# }



# module "vm"{
#     source = "./modules/compute"
#     resource_group = "${module.shared_svc_rg.rg}"
#     vmprofile = "${var.vmprofile}"
#     os_image = "${var.os_image}"
#     os_profile = "${var.os_profile}" 
#     vm_subnet_id = "${module.hub_network.vnet.subnet.ext-dmz.id}"
#   #  vm_subnet_id = "${module.network.vnet_subnet_id.hub_shrd_svc_id}"
# }