#terraform script
Clone repository 

For AI Search
1. cd into search folder and add a file search/terraform.tfvars 

2. Add the following line to the terraform.tfvars

resource_group_name = "actualNameOfExistingResourceGroup"

3. Initialise  terraform

  terraform init - upgrade

4. Import existing resource group into the state information for terraform if not already done

terraform import azurerm_resource_group.existing /subscriptions/<Subscription ID>/resourceGroups/<actualNameOfExistingResourceGroup>

5. Produce plan and apply to create AI Search service

  terraform plan -out main.tfplan
  terraform apply main.tfplan

To remove just the Azure AI search service

  terraform init
  terraform plan -target=azurerm_search_service.search_service
  terraform destroy -target=azurerm_search_service.search_service