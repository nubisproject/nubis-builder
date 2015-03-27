# nubis-builder

Primary Nubis build tool. Designed to be invoked from the working directory of a Nubis project this tool will
consume project.json and ultimately build a series of AMIs relating to the project.

## Builder quick start ##
0. Setup secrets/variables.json, [the documentation](blob/master/secrets/README.md)
0. Run *nubis-builder build* from the project's working directory.

## New project quick start ##
0. Setup your secrets according to the [Quick start to build an existing project](#Builder quick start)
0. Check out the [nubis-blank](https://github.com/Nubisproject/nubis-blank) project as a quick skeleton
0. Adjust [project.json](#project.json) to suit your needs.

## Dependencies ##

* AWS CLI tools <https://aws.amazon.com/cli/>
* jq <https://stedolan.github.io/jq/>
* packer <https://packer.io/>
* librarian-puppet <https://github.com/rodjek/librarian-puppet>

## project.json ##
```JSON
{
  "variables": {
    "project_name": "",
    "project_description": "",
    "project_version": "0.1",
    "source_ami_project_name": "",
    "source_ami_project_version": "",
    "automatic_version_bump": "1",
    "automatic_version_verify": "1",
    "builders": ["amazon-ebs-amazon-linux", "amazon-instance-amazon-linux"]
  }
```

### Variable descriptions ###

#### Required parameters ####
##### project_name #####
A short human readable single word description of your project, such as nubis-base. Amazon's [tag restrictions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-restrictions) are applicable.

##### project_description #####
A blob of text describing your project, such as "MediaWiki varnish server".

##### project_version #####
Your project's version. If you use [automatic_version_bump](#automatic_version_bump) or [automatic_version_verify](#automatic_version_verify) it must consist of two whole numbers separated by a decimal, such as 1.0 or 2.24.

##### source_ami_project_name #####
Your project's source AMI name. You will want to set this to "nubis-base" in most cases, which will build your 
project using the latest available base AMI.

##### builders #####
List of builders to use when building your project. See the [officially supported builders](https://github.com/nubis-project/nubis-builder/tree/master/packer)

#### Optional parameters ####

##### source_ami_project_version #####
You can optionally pin the source AMI to a specific version. Should not include source project name.

##### automatic_version_bump #####
Automatically bump the version for each build. If your project_version is at 1.0 it will be incremented to 1.1 
before the build kicks off.

##### automatic_version_verify #####
Query the Amazon AMI registry and verify that there is not already a build with your version number. This can 
help save you some time, because you won't discover namespace collisions until the end of the build process.

## Additional documentation ##
Browse through the directory tree to see additional documentation for specific portions of the project.

## Found a bug? ##
Please file a [GitHub issue](https://github.com/nubisproject/nubis-builder/issues) and document your problem,
it would be helpful to include the output of nubis-builder with --verbose and optionally --keep-json, and
quote the relevant portions of the constructed json file in your issue.
