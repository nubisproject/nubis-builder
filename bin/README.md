
# nubis-builder script and supporting tools

=========================================

## nubis-builder

Primary Nubis build tool. Designed to be invoked from the working directory of a
Nubis project this tool will consume project.json and ultimately build a series
of AMIs relating to the project.

## aws-sts-assume-role (experimental, under development)

This script will get access credentials (access key, secret key, and token) from
AWS's API for use during instance-store builds.

## nubis-librarian-puppet

If ```${PROJECT_PATH}/nubis/Puppetfile``` exists the
librarian-puppet-masterless.json provisioner will be loaded and
nubis-librarian-puppet called, which will do the following:

1. librarian-puppet clean
1. librarian-puppet install
1. Copy $LIBRARIAN_PUPPET_PATH/etc/puppet/modules/puppet/* to /etc/puppet
   (such as puppet.conf or hiera.yaml)
1. Tar everything up as $LIBRARIAN_PUPPETFILE_DIRECTORY/librarian-puppet.tar.gz

**NOTE**: The puppet tree is tarred and compressed so it can be uploaded to the
AMI and unpacked in /etc/puppet, we leave the puppet code on the image in case a
future build process wants to reuse puppet code.
