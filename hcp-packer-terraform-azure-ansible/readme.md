
**About this project:** 
This packer project is to build images for Ubuntu in Azure cloud and configure using Ansible. Use Terraform Cloud for VM creation after packer build. 

Packer installation and configuration [clic here](https://github.com/e2eSolutionArchitect/hashicorp-packer/blob/main/README.md)

- Rename the file 'values_pkrvars.hcl' to 'values.pkrvars.hcl' 
- Update variables with actual values in 'values.pkrvars.hcl' 

Connect Azure Cloud [click here](https://github.com/e2eSolutionArchitect/hashicorp-packer/blob/main/golden-images/azure/readme.md)

Run Packer

```
# one time. If you are setting up packer project for very first time. 
packer init . 

```

```
# To format all packer files in the directory
packer fmt . 

packer validate -var-file="values.pkrvars.hcl" .

packer build -var-file="values.pkrvars.hcl" .

```
## Configure your local Packer with HCP Packer 
Please [refer here](https://developer.hashicorp.com/packer/tutorials/hcp-get-started/hcp-push-image-metadata)
- Assuming you have a 'packer registry' created. Or simply create a 'free registry'
- In Access control (IAM) menu create a Service Principal. under that SP create key. it will generate Client ID and Secret ID. Copy these two ids. 
- Add these two variables (HCP_CLIENT_ID,HCP_CLIENT_SECRET) with the generated values in environment variables. e,g. For windows add these two under environment variables. 
- Run packer build to test the connection on the project [azure v03](https://github.com/e2eSolutionArchitect/hashicorp-packer/tree/main/golden-images/azure/az-pkr-v03)
