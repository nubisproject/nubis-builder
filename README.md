# nubis-builder
This is a collection of tools we built to drive Packer, greatly simplifying Packer configuration. Designed to be invoked from the working directory of a Nubis project this tool will
consume project.json and ultimately build a series of AMIs relating to the project.

## Builder quick start
0. Clone this repository
0. Install the [Dependencies](#Dependencies)
0. Setup your secrets/variables.json file following [these](secrets/README.md) instructions
0. Put nubis-builder in your [path](#Setup Path)
0. Run *nubis-builder build* from the project's working directory.

### Dependencies
#### AWS CLI
Install the AWS CLI tool. You can install it by following the instructions at the top of [this page](http://aws.amazon.com/cli/), For Mac and Linux users you can simply:

```bash
pip install awscli
```

#### jq
We use [jq](https://stedolan.github.io/jq/) to munge [JSON](http://json.org/) data from within [Bash](http://www.gnu.org/software/bash/). From the [jq site](https://stedolan.github.io/jq/):
>jq is like sed for JSON data – you can use it to slice and filter and map and transform structured data with the same ease that sed, awk, grep and friends let you play with text.

You can install it by following the instructions on the [download](https://stedolan.github.io/jq/download/) page.

#### Packer
[Packer](https://www.packer.io/) (from Hashicorp) is the image building tool we use to build the Nubis system images.

Built in Go, it's a simple .zip file to download with static binaries in it. No dependencies or installation pain. Simply follow the instruction [here](https://www.packer.io/downloads.html).

#### Librarian Puppet
Librarian puppet is only necessary if you will be building base images. If you do not know what I am talking about than this step is unnecessayr for you.

To install [librarian-puppet](https://github.com/rodjek/librarian-puppet) follow the instructions [here](https://github.com/rodjek/librarian-puppet#how-to-use).

### Setup Path
While this step is not mandatory, it sure is convenient to have the nubis-builder tools on your path. You can do this one time by:
```bash
PATH=/path/to/your/clone/of/nubis-builder/bin:$PATH
```
You can make this automatic on login by adding it to the bottom of your bashrc file:
```bash
echo "PATH=/path/to/your/clone/of/nubis-builder/bin:$PATH" >> ~/.bashrc
```
Of course in both of these examples you will need to change */path/to/your/clone/of* to the actual path on your system.

## New project quick start
0. Set up nubis-builder according to the [quick start instructions](#Builder quick start)
0. Check out the [nubis-blank](https://github.com/Nubisproject/nubis-blank) project as a quick skeleton
0. Adjust [project.json](#project.json) to suit your needs.

## project.json
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

### Variable descriptions

#### Required parameters
##### project_name
A short human readable single word description of your project, such as nubis-base. Amazon's [tag restrictions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-restrictions) are applicable.

##### project_description
A blob of text describing your project, such as "MediaWiki varnish server".

##### project_version
Your project's version. If you use [automatic_version_bump](#automatic_version_bump) or [automatic_version_verify](#automatic_version_verify) it must consist of two whole numbers separated by a decimal, such as 1.0 or 2.24.

##### source_ami_project_name
Your project's source AMI name. You will want to set this to "nubis-base" in most cases, which will build your 
project using the latest available base AMI.

##### builders
List of builders to use when building your project. See the [officially supported builders](https://github.com/nubis-project/nubis-builder/tree/master/packer)

#### Optional parameters

##### source_ami_project_version
You can optionally pin the source AMI to a specific version. Should not include source project name.

##### automatic_version_bump
Automatically bump the version for each build. If your project_version is at 1.0 it will be incremented to 1.1 
before the build kicks off.

##### automatic_version_verify
Query the Amazon AMI registry and verify that there is not already a build with your version number. This can 
help save you some time, because you won't discover namespace collisions until the end of the build process.

## Additional documentation
Browse through the directory tree to see additional documentation for specific portions of the project.

## Found a bug?
Please file a [GitHub issue](https://github.com/nubisproject/nubis-builder/issues) and document your problem,
it would be helpful to include the output of nubis-builder with --verbose and optionally --keep-json, and
quote the relevant portions of the constructed json file in your issue.
