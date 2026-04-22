# azure-lab

Terraform labs for Azure infrastructure.

## Labs

- `lab-minimal/`: VM + VNet + NSG + public IP

## Usage

```bash
cd lab-minimal
terraform init
terraform plan
terraform apply
# Test your resources
terraform destroy
```

## What it demonstrates

- `terraform init`, `plan`, `apply`, `destroy` lifecycle
- Azure provider configuration
- Virtual machine provisioning
- Virtual Network (VNet) and subnet
- Network Security Group (NSG)