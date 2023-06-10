# hashicorp-packer
hashicorp-packer

Hashicorp Cloud Platform (HCP) [click here](https://www.hashicorp.com/cloud)

Terraform Cloud [click here](https://app.terraform.io/session)

# Install Packer 
- Download packer for your windows/Mac/Linux system [click here](https://developer.hashicorp.com/packer/downloads)
### For Windows
- Unzip the file and save the .exe in a folder.
- Go to 'environment variable' and under PATH add an entry for the path of the folder where the packer.exe exist

### Browse to the directory where the *.pkr.hcl exists
## Initiate, Validate & Build Packer
Do not miss the '.' at end of the command
```

# Initiate 
packer init .

# Validate
packer validate .

# Build
packer build .

```

### Format code in packer
```
packer fmt .
```

