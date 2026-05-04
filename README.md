# Azure Ubuntu VM with Terraform

This Terraform project deploys an Ubuntu Server VM on Azure with a virtual network, subnet, public IP, network security group, and SSH access.

## Prerequisites
- Microsoft Azure Subscription

## Setup
There are multiple possible setups to make this work. The easiest option is to clone this repo from, or download it to, the Azure Cloud Shell. Then copy the public SSH key that you want to use to that same directory. Another option would be to install the Azure CLI and Terraform on your local machine and then do everything from there.

## Configure

Configure the variables in `terraform.tfvars`.

You can find the allowed locations for your Azure subscription in the assigned location policies:

```bash
az policy assignment list --query "[?policyDefinitionId=='/providers/Microsoft.Authorization/policyDefinitions/b86dabb9-b578-4d7b-b842-3b45e95769a1']"
```

To list available VM sizes for a location, run:

```bash
az vm list-skus \
  --location <azure-location>\
  --resource-type virtualMachines \
  --size Standard_B \
  --output table
```

This is already filtering for Standard_B-series VM sizes. You are probably going to want to use a machine from this family for this project, but feel free to remove the filter if you are interested to see what other machines are available.

Since this command is probably going to take a few seconds to run, you can use that time to think about the resources we need for our small lab project. You can go to https://azure.microsoft.com/en-us/pricing/calculator/ or https://learn.microsoft.com/en-us/azure/virtual-machines/sizes/ to check the different types of machines that Azure offers.

## Deploy

Once you have configured all variables, use the following commands to deploy your VM:

```bash
az login
az account set --subscription "<your-subscription-id>"

terraform init
terraform fmt
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
```

Note that `terraform` plan will likely take a few minutes. You can use this time to familiarize yourself a little with how you could set up a VM manually in the browser (i.e. in the Azure Portal).

## Destroy

If you no longer need your VM, you can remove all of the created infrastructure:

```bash
terraform destroy
```
