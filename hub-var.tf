variable "sharedsvc-resource_group" {
  default     = {
        name  = "sharedsvc-rg"
        location = "SouthEast Asia"
    }
}

variable "hub-tags" {
   default     = {
        source  = ""
        env     = ""
    }
}

variable "hub-vnet" {
   default={name = "hub-vnet"
   ipaddress = ["10.0.0.0/22"]} 
  }

variable "hub-subnet_numbers" {
  default     = {
    "GatewaySubnet" = "10.0.0.0/25"
    "AzureFirewallSubnet" = "10.0.0.128/25"
    "ext-dmz" =  "10.0.1.0/24"
    "int-dmz" =  "10.0.2.0/24"
    "shared-svc" =  "10.0.3.0/24"
  }
}