
## Author
This project is maintained by '[end-to-end Solution Architect](https://e2esolutionarchitect.com/)'. Please feel free to drop a note to contactus@e2eSolutionArchitect.com for any queries

## Permission
end-to-end Solution Architect forum is contributing this as knowledge sharing. You are free to use and modify this.

## About the project

add architecture diagram of application

Rename app_tfvars file name to app.tfvars and then execute  the below command
```
 terraform apply -var-file="app.tfvars" -var="createdby=e2esa"
```

## Terraform project specification 
[click here](tf-spec.md)

## Run terraform-docs to generate tf document
browse inside your Terraform project directory and run the below command 

```
terraform-docs markdown table . > tf-spec.md
```

## Terraform Cloud configuration
[click here](https://github.com/e2eSolutionArchitect/terraform/blob/main/terraform-cloud.md)

Please make sure following configuration in Terraform Cloud
- A Service  Principal has been created and added as environment variables (HCP_CLIENT_ID, HCP_CLIENT_SECRET) in Terraform Cloud in particular workspace under variables.
- Azure connection credentials added  as environment variables (ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_TENANT_ID, ARM_SUBSCRIPTION_ID) in Terraform Cloud in that particular workspace under variables.

### While initiating run from CLI and connecting TF Cloud
```
terraform init

# login will open up a browser and will take you to create a token in TF Cloud portal. If youhave the token already created just enter the token in the CLI prompt and it will show connected successfully.
terraform login  

terraform apply -var-file="app.tfvars" -auto-approve
```



## Configure your local Packer with HCP Packer 
Please [refer here](https://developer.hashicorp.com/packer/tutorials/hcp-get-started/hcp-push-image-metadata)
- Assuming you have a 'packer registry' created. Or simply create a 'free registry'
- In the Access control (IAM) menu create a Service Principal. Under that SP create a key. it will generate a Client ID and Secret ID. Copy these two ids. 
- Add these two variables (HCP_CLIENT_ID, HCP_CLIENT_SECRET) with the generated values in environment variables. e,g. For Windows add these two under environment variables. 
- Run packer build to test the connection on the project [azure v03](https://github.com/e2eSolutionArchitect/hashicorp-packer/tree/main/golden-images/azure/az-pkr-v03)

## Notes
- Please check the repository https://github.com/e2eSolutionArchitect/terraform
- We encourage you to contribute your knowledge to us and create a stronger IT community.

