#   to source a custom packer image from a virtual box vm base image
packer {
  required_plugins {
    virtualbox = {
      version = "tbu"
      source  = "tbu"
    }
    vagrant = {
      version = ">= 1.1.1"
      source  = "github.com/hashicorp/vagrant"
    }
  }
}