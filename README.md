# nubis-builder

## Quick start
0. Setup secrets/variables.json
0. Run nubis-builder build --build-prefix \<path to nubis-builder checkout\> --project-path \<path to your project\>

## Interesting files

##### packer/builders
This defines the builders for every job that's built with nubis-builder. We currently cross-build for 4 platform types.

##### packer/provisioners
Various provisioners that are conditionally enabled during the build process. At this time we only support puppet masterless.

##### bin/nubis-builder
Where all the magic happens

## Dependencies

* AWS CLI tools <https://aws.amazon.com/cli/>
* jq <https://stedolan.github.io/jq/>
* packer <https://packer.io/>
* librarian-puppet <https://github.com/rodjek/librarian-puppet>

## Wanna help? Great!

See bin/nubis-build and grep for XXX, there are a few features which are still not yet implemented.
