output "public_ip_address" {
  description = "Public IP address of the Ubuntu VM."
  value       = azurerm_public_ip.public_ip.ip_address
}

output "ssh_command" {
  description = "SSH command to connect to the VM."
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.public_ip.ip_address}"
}