variable "resourceprefix" {
   
  }

variable "loc" {
    description = "Default Azure Region"
   
}

variable "tags" {
   default     = {
        source  = ""
        env     = ""
    }
}


variable "nsg_subnet_id" {
 
  }

