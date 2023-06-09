
Validate & Build packer project when using *.pkrvars.hcl
Please don't miss the '.' in below command

```
# Validate
packer validate -var-file="values.pkrvars.hcl" .

# Build
packer build -var-file="values.pkrvars.hcl" .
```
