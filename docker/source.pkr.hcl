# source a custom packer image from a docker ubuntu image as base image

packer {
    required_plugins {
        docker = {
        version = ">=1.0.8" 
        source = "github.com/hashicorp/docker"
    }
}
}

source docker "ubutntu" {
    image = "var.docker_image"  # creates a base image
    commit = true               #commits the container to an image
}

