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

variable "ipaddress" {
   default =["10.0.0.0/16"]
}
