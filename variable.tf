variable "resourceprefix" {
    default = "azsea"
  }

variable "loc" {
    description = "Default Azure Region"
    default = "South East Asia"  
}

variable "tags" {
    default     = {
        source  = "citadel"
        env     = "training"
    }
}

variable "hub_ipaddress" {
  default={
   hub =["10.1.0.0/16"]
   gw = "10.1.0.0/24"
   sharedsvc = "10.1.1.0/24"
   ext_dmz = "10.1.2.0/24"
   nva = "10.1.3.0/24"
}
}

