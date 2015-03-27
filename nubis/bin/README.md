Supporting shell scripts
========================

Shell scripts that support the build process are located in this directory, and typically called by a shell 
script provisioner in packer. See the [packer documentation](https://www.packer.io/docs/provisioners/shell.html) 
for more information.

#### housekeeper ####
This shell script is responsible for truncating log files that were generated during the AMI build process, and 
clearing out any ssh keys that were configured by cloud-init.
