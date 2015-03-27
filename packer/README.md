Packer modules
==============

In here you will find various modules that [../bin/nubis-builder](nubis-builder) can load if related features 
are enabled. Please keep in mind that the modules in these directories are not automatically loaded, most of 
them will be conditionally loaded by hard coded logic in [../bin/nubis-builder](nubis-builder)

### builders ###
[../bin/nubis-builder](nubis-builder) includes built in support for four Amazon platforms. These are provided 
for your convenience and allows you to quickly build for officially supported platforms. You're not limited to 
these builders you can still write your own in your project file, and nubis-builder will build for you.

We provide built in support for the following platforms:
* Amazon EBS backed Amazon Linux
* Amazon instance store backed Amazon Linux
* Amazon EBS backed Ubuntu
* Amazon Instance store backed Ubunbu


### provisioners ###
Provisioners are normally used to invoke a configuration management system to install and configure software, but
we also use provisioners to perform builder housekeeping tasks and to bake in project metadata.

We provide built in support for two configuration management provisioners:
* Puppet masterless with librarian puppet
* Puppet masterless with all puppet code baked into the project repository
