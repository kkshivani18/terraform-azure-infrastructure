variable "resource_group_name" {
  description = "resource group name"
  type        = string
  default     = "az-tf-web"
}

variable "resource_group_location" {
  description = "Location of the resource group"
  type        = string
  default     = "West US"
}

variable "vnet_name" {
  description = "virtual network name"
  type        = string
  default     = "az-tf-web-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "subnet name"
  type        = string
  default     = "az-tf-web-subnet"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "nsg_name" {
  description = "network security group"
  type        = string
  default     = "az-tf-web-nsg"
}

variable "public_ip_name" {
  description = "public IP name"
  type        = string
  default     = "az-tf-web-public-ip"
}

variable "network_interface_name" {
  default     = "az-tf-web-nic"
  description = "Network Interface card name"
}

variable "az_vm_name" {
  default     = "az-tf-web-vm"
  description = "virtual machine name"
}

variable "host_os" {
  type = string
}