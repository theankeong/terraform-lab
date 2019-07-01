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

variable "ipaddress" {
    default = "10.0.100.0/24"  
}
