# nubis-builder

This is a collection of tools we built to drive Packer, greatly simplifying
Packer configuration. Designed to be invoked from the working directory of a
Nubis project this tool will consume project.json and ultimately build a series
of AMIs relating to the project.

## Builder quick start

1. Fork this repository
2. Install the [Dependencies](#dependencies)
3. Setup your secrets/variables.json file following [these](secrets/README.md) instructions
4. Put nubis-builder in your [path](#setup-path)
5. Run *nubis-builder build* from the project's working directory.

### Dependencies

#### jq

We use [jq](https://stedolan.github.io/jq/) to munge [JSON](http://json.org/)
data from within [Bash](http://www.gnu.org/software/bash/). From the
[jq site](https://stedolan.github.io/jq/):
>jq is like sed for JSON data – you can use it to slice and filter and map and
transform structured data with the same ease that sed, awk, grep and friends
let you play with text.

You can install it by following the instructions on the
[download](https://stedolan.github.io/jq/download/) page.

Homebrew users:

```bash
brew install jq
```

Debian / Ubuntu users:

```bash
apt-get install jq
```

#### Packer

[Packer](https://www.packer.io/) (from Hashicorp) is the image building tool we
use to build the Nubis system images.

Built in Go, it's a simple .zip file to download with static binaries in it. No
dependencies or installation pain. Simply follow the instruction [here](https://www.packer.io/downloads.html).

Homebrew users (requires Caskroom, ```brew install caskroom/cask/brew-cask```):

```bash
brew install packer
```

#### Librarian Puppet

Librarian puppet is only necessary if you will be building base images. If you
do not know what I am talking about than this step is unnecessary for you.

To install [librarian-puppet](https://github.com/rodjek/librarian-puppet) follow
the instructions [here](https://github.com/rodjek/librarian-puppet#how-to-use).

### Setup Path

While this step is not mandatory, it sure is convenient to have the
nubis-builder tools on your path. You can do this one time by:

```bash
PATH=/path/to/your/clone/of/nubis-builder/bin:$PATH
```

You can make this automatic on login by adding it to the bottom of your bashrc
file:

```bash
echo "PATH=/path/to/your/clone/of/nubis-builder/bin:$PATH" >> ~/.bashrc
```

Of course in both of these examples you will need to change
*/path/to/your/clone/of* to the actual path on your system.

If you are following the walkthrough or working on an existing project you can
stop here. If you are setting up a new project from scratch, continue reading.

## New project quick start

1. Set up nubis-builder according to the [quick start instructions](#builder-quick-start)
2. Check out the [nubis-skel](https://github.com/Nubisproject/nubis-skel)
   project as a quick skeleton
3. Adjust [project.json](#projectjson) to suit your needs.

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

A short human readable single word description of your project, such as
nubis-base. Amazon's [tag restrictions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-restrictions)
are applicable.

##### project_description

A blob of text describing your project, such as "MediaWiki server".

##### project_version

Your project's version. If you use [automatic_version_bump](#automatic_version_bump)
or [automatic_version_verify](#automatic_version_verify) it must consist of two
whole numbers separated by a decimal, such as 1.0 or 2.24.

##### source_ami_project_name

Your project's source AMI name. You will want to set this to "nubis-base" in
most cases, which will build your project using the latest available base AMI.

##### builders

List of builders to use when building your project.
See the [officially supported builders](packer#builders)

#### Optional parameters

##### source_ami_project_version

You can optionally pin the source AMI to a specific version. Should not include
source project name.

## Additional documentation

Browse through the directory tree to see additional documentation for specific
portions of the project.

## Found a bug

Please file a [GitHub issue](https://github.com/nubisproject/nubis-builder/issues)
and document your problem, it would be helpful to include the output of
nubis-builder with --verbose and optionally --keep-json, and quote the relevant
portions of the constructed json file in your issue.
