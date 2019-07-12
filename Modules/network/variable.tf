variable "resource_group" {
  default     = {
        name  = "aaa"
        location = "aaa"
    }
}

variable "tags" {
   default     = {
        source  = ""
        env     = ""
    }
}

variable "vnet" {
   default={name = "hub"
   ipaddress = ["10.0.0.0/16"]} 
  }

variable "subnet" {
  default=[
      {name="gw"
      ipaddress="10.0.0.0/24"},

      {name="web"
      ipaddress="10.0.1.0/24"},

      {name="app"
      ipaddress="10.0.2.0/24"},

      {name="data"
      ipaddress="10.0.3.0/24"}

  ]
   
}