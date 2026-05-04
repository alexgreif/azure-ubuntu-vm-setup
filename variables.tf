variable "project_name" {
  description = "Prefix used for Azure resource names."
  type        = string
  default     = "ubuntu-demo"
}

variable "resource_group_name" {
  description = "Azure Resource Group name."
  type        = string
  default     = "rg-ubuntu-demo"
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "westeurope"
}

variable "environment" {
  description = "Environment tag."
  type        = string
  default     = "dev"
}

variable "vm_size" {
  description = "Azure VM size."
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Linux admin username."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to your SSH public key."
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_source_address_prefix" {
  description = "Allowed source IP/CIDR for SSH. Use your public IP with /32 for better security."
  type        = string
  default     = "*"
}

variable "http_source_address_prefix" {
  description = "Allowed source IP/CIDR for HTTP."
  type        = string
  default     = "*"
}

variable "https_source_address_prefix" {
  description = "Allowed source IP/CIDR for HTTPS."
  type        = string
  default     = "*"
}