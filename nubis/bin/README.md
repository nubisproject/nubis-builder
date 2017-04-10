
# Supporting shell scripts

========================

Shell scripts that support the build process are located in this directory, and
typically called by a shell script provisioner in packer. See the
[packer documentation](https://www.packer.io/docs/provisioners/shell.html) for
more information.

The scripts in nubis-builder/bin are build tool helpers, and will run on the
local system. All of the scripts in here will be ran on the build target during
the build process.

## housekeeper

This shell script is responsible for truncating log files that were generated
during the AMI build process, and clearing out any ssh keys that were configured
by cloud-init.
