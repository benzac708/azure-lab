# azure-lab

Terraform lab for Azure infrastructure.

## What it builds

- Resource group
- Virtual network and subnet
- Network security group
- Public IP and network interface
- Linux virtual machine with SSH access

## Usage

```bash
terraform init
terraform plan
terraform apply
# Test your resources
terraform destroy
```

## Verification

- Validated with `terraform init`, `terraform validate`, and `terraform plan`
- Live apply requires an active writable Azure subscription

## Files

- `main.tf`: core Azure resources
- `variables.tf`: input variables
- `terraform.tfvars.example`: starter values
- `outputs.tf`: useful outputs after apply
