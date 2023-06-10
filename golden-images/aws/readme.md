## Setup AWS CLI

## Configure AWS credentials

## Install Packer

## Initiate, Validate & Build Packer
Do not miss the '.' at end of the command
```

# Initiate 
packer init .

# Validate
packer validate .

# Build
packer build 

```

# Specify packer file to builkd or validate. '.' not needed when you specify the file
```
packer validate mypacker.pkr.hcl

packer build mypacker.pkr.hcl
```
