nubis-builder script and supporting tools
=========================================

#### nubis-builder ####
Primary Nubis build tool. Designed to be invoked from the working directory of a Nubis project this tool will 
consume project.json and ultimately build a series of AMIs relating to the project.

#### aws-find-ami ####
This tool searches the Amazon AMI registry, sorts the results, and returns a single AMI ID
that corresponds to the most recent image as determined by jq's sort.

#### aws-sts-assume-role (experimental, under development) ####
This script will get access credentials (access key, secret key, and token) from AWS's API for use during 
instance-store builds.

#### generate-base-ami-ids ####
This script searches Amazon's AMI registry for official Ubuntu and Amazon Linux base AMI IDs. It's called when 
building the special source_ami_project_name "base". Currently, version pinning is not supported. It will always 
build on top of the latest AMI.

Amazon Linux release candidates are specifically excluded.

#### generate-source-ami-ids ####
This script will search Amazon's AMI registry and find AMI IDs of a project, optionally a
specific version as set by the source_ami_project_version variable.

#### nubis-bump-version ####
The script will bump the major and/or minor version numbers in the project json file, which is consumed by 
nubis-builder. This allows you to quickly build a series of AMIs quickly without an additional manual step.

#### nubis-librarian-puppet ####
If ${project_path}/nubis/Puppetfile exists the librarian-puppet-masterless.json provisioner will be loaded
and nubis-librarian-puppet called, which will do the following:

0. librarian-puppet clean
0. librarian-puppet install
0. Copy $librarian_puppet_path/etc/puppet/modules/puppet/* to /etc/puppet (such as puppet.conf or hiera.yaml)
0. Tar everything up as $librarian_puppetfile_directory/librarian-puppet.tar.gz

**NOTE**: The puppet tree is tarred and compressed so it can be uploaded to the AMI and unpacked in /etc/puppet, 
we leave the puppet code on the site in case a future build process wants to reuse puppet code.

#### nubis-release (experimental, under development) ####
This script will mark a release on Github by creating a new tag, signing it, and running a push.

#### nubis-verify-version ####
In a multi developer environment your version numbers may collide if two builds run in parallel. A good practice 
would be to force versioning through a build automation pipeline such as jenkins but this script is provided to 
query the AMI registry and check that your local build number won't collide with another build. Otherwise you
would not find out until the end of the build process that your AMI name conflicted with another image.
