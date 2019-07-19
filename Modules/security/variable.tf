variable "resource_group" {
  default     = {
        name  = "vnet-rg"
        location = "SouthEast Asia"
    }
}
variable "tags" {
   default     = {
        source  = ""
        env     = ""
    }
}

variable "nsg" {
   default={name = "hub-nsg"
  }


variable "vnet_subnet_id" {
 
  }

