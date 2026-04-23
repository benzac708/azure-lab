output "resource_group_name" {
  description = "Created Azure resource group"
  value       = azurerm_resource_group.this.name
}

output "public_ip" {
  description = "Public IP address of the VM"
  value       = azurerm_public_ip.this.ip_address
}

output "vm_name" {
  description = "Linux VM name"
  value       = azurerm_linux_virtual_machine.this.name
}

output "ssh_command" {
  description = "SSH command for the VM"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.this.ip_address}"
}

output "aks_cluster_name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.this.name
}

output "aks_kubeconfig" {
  description = "Command to get kubeconfig"
  value       = "az aks get-credentials --resource-group ${azurerm_resource_group.this.name} --name ${azurerm_kubernetes_cluster.this.name}"
  sensitive  = false
}

output "aks_kubectl_command" {
  description = "Command to test kubectl"
  value       = "kubectl get nodes"
}
