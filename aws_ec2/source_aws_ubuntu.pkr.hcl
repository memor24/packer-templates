packer {
  required_plugins {
    amazon = {
      version = ">= 1.3.3"
      source  = "github.com/hashicorp/amazon"
    }
    vagrant = {
      version = ">= 1.1.1"
      source  = "github.com/hashicorp/vagrant"
    }
  }
}

# using amazon-ebs (elastic block storage) as template image
source "amazon-ebs" "ubuntu" {
  ami_name      = "test-packer-linux-aws"
  source_ami = var.source_ami
  instance_type = var.instance_type
 region        = var.region
  ssh_username = "ubuntu"
}

