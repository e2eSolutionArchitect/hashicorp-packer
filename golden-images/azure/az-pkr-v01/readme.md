
Packer installation and configuration [clic here]()

- Rename the file 'values_pkrvars.hcl' to 'values.pkrvars.hcl' 
- Update variables with actual values in 'values.pkrvars.hcl' 

Connect Azure Cloud [click here]()

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
