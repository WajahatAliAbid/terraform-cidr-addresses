# CIDR Addresses

This terraform module takes a cidr block and returns all ip addreses as a list. 

## Requirements
Terraform version must be equal or greater than 1.0.0

## Usage
```hcl
module "cidr_addreseses" {
    source = "git@github.com:ZenExtensions/terraform-cidr-addresses"
    cidr = "10.0.0.0/24"
}
```

### Output
```
ip_addresses = [
    ""
]
```