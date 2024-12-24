# image builder
build {
  name = var.build_name
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  # config the image with bash script
  provisioner "shell" {
    inline = [
      "sudo apt update",
      "sudo apt install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
      "sudo ufw allow proto tcp from any to any port 22,80,443",
      "echo 'y' | sudo ufw enable"
    ]
  }
  provisioner "shell" {
    inline = ["echo your configured image is created and ready to be deployed"]
  }
  # turn into a vagrant box e.g. for dev environment
  post-processor "vagrant" {}
}