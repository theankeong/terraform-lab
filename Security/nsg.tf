module "vars" {
  source = "../"
  
}

resource "azurerm_resource_group" "nsgrg" {
  name = "${module.vars.var.local}"
}
