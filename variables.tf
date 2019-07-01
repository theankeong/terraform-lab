variable "resourceprefix" {
    default = "azsea"
  }

variable "loc" {
    description = "Default Azure Region"
    default = "West Europe"  
}

variable " tags" {
    default = {
        env = "engineering"
        dept = "IT"
    }
}

variable "ipaddress" {
    default = "10.0.100.0/24"  
}
