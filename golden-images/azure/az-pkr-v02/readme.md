
**About this project:** 
This packer project is to build images for Ubuntu, RHEL and Win11 in Azure cloud.

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
