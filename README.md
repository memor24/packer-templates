# Packer Templates
These handy templates can be used to create Packer files, \
which is about creating configured custom images and then deploying them after, \
unlike the traditional way of deploying images and then configuring them later.

3 examples of base images were used:
- AWS ami
- Docker image
- Virtualbox VM image

To prepare and download the plugins:
```
packer fmt .
packer init .
packer validate .
```
Then build the custom image:
```
packer build .
```

For using cloud images as base image, use cloud credentials, e.g. for AWS CLI as below:
```
$ export AWS_ACCESS_KEY_ID="<YOUR_AWS_ACCESS_KEY_ID>"
$ export AWS_SECRET_ACCESS_KEY="<YOUR_AWS_SECRET_ACCESS_KEY>"
```
The case for utilizing Packer [video here](https://www.youtube.com/watch?v=r0I4TTO957w&t=415s)
