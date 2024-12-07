build {
    name= 
    source = [
        "source.docker.ubuntu"
    ]
    provisioner "shell" {
        environment_vars=["name=JS"]   # local variables
        inline=["echo Adding file to docker image",
        "echo \"The program is $name\" > test.txt"]
    }
    provisioner "shell" {
    inline=["echo Running ${var.docker_image} image"]
    }
    post-processor "docker_tags" {
        repository="test-docker-build"
    }
}