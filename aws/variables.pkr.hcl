variable "region" {
    default="us-west-2"
}

variable "instance_type" {
    default="t2.micro"
    type=string
}

variable "source_ami" {
    default="0557a15b87f89cf"
}

variable "build_name" {
    default="test-ec2-builder"
}