# Azure Ubuntu VM with Terraform

This Terraform project deploys an Ubuntu Server VM on Azure with a virtual network, subnet, public IP, network security group, and SSH access.

## Configure

Configure variables in `terraform.tfvars`.

To list available VM sizes for a location, run:

```bash
az vm list-sizes --location "<azure-location>" --output table
```

If your Azure subscription restricts allowed regions, check the assigned location policies:

```bash
az policy assignment list --query "[?policyDefinitionId=='/providers/Microsoft.Authorization/policyDefinitions/b86dabb9-b578-4d7b-b842-3b45e95769a1']"
```

## Deploy

Use the following commands to deploy your VM:

```bash
az login
az account set --subscription "<your-subscription-id>"

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```
