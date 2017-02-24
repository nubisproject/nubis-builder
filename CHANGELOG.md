# Change Log

## [v1.4.0](https://github.com/nubisproject/nubis-builder/tree/v1.4.0) (2017-02-24)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.3.1...v1.4.0)

**Closed issues:**

- Convert to using Packer's source\_ami\_filter instead of our own ami searches [\#199](https://github.com/nubisproject/nubis-builder/issues/199)

**Merged pull requests:**

- Update CHANGELOG for v1.4.0 release \[skip ci\] [\#204](https://github.com/nubisproject/nubis-builder/pull/204) ([tinnightcap](https://github.com/tinnightcap))
- Update CHANGELOG for v1.4.0 release \[skip ci\] [\#203](https://github.com/nubisproject/nubis-builder/pull/203) ([tinnightcap](https://github.com/tinnightcap))
- Update CHANGELOG for v1.4.0 release \[skip ci\] [\#202](https://github.com/nubisproject/nubis-builder/pull/202) ([tinnightcap](https://github.com/tinnightcap))
- Update CHANGELOG for v1.4.0 release [\#201](https://github.com/nubisproject/nubis-builder/pull/201) ([tinnightcap](https://github.com/tinnightcap))

## [v1.3.1](https://github.com/nubisproject/nubis-builder/tree/v1.3.1) (2017-02-13)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.3.0...v1.3.1)

**Closed issues:**

- Add an option to use spot instances [\#196](https://github.com/nubisproject/nubis-builder/issues/196)
- Make instance-type configurable [\#193](https://github.com/nubisproject/nubis-builder/issues/193)
- Enable force\_delete\_snapshot once we are at Packer 0.12.1 [\#191](https://github.com/nubisproject/nubis-builder/issues/191)
- Move everything packer related into packer [\#119](https://github.com/nubisproject/nubis-builder/issues/119)

**Merged pull requests:**

- Refactor to use Packer's source\_ami\_filter  [\#200](https://github.com/nubisproject/nubis-builder/pull/200) ([gozer](https://github.com/gozer))
- further merge fix [\#198](https://github.com/nubisproject/nubis-builder/pull/198) ([gozer](https://github.com/gozer))
- Add --spot option to request building with Spot instances [\#197](https://github.com/nubisproject/nubis-builder/pull/197) ([gozer](https://github.com/gozer))
- Add force\_delete\_snapshot to clean up AMI snapshots when we replace an AMI [\#195](https://github.com/nubisproject/nubis-builder/pull/195) ([gozer](https://github.com/gozer))
- Add an --instance-type option for builder [\#194](https://github.com/nubisproject/nubis-builder/pull/194) ([gozer](https://github.com/gozer))

## [v1.3.0](https://github.com/nubisproject/nubis-builder/tree/v1.3.0) (2016-12-21)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.3.0-dev...v1.3.0)

**Fixed bugs:**

- nubis-builder errors when {{env `GIT\_COMMIT\_SHA`}} is in build version [\#171](https://github.com/nubisproject/nubis-builder/issues/171)

**Closed issues:**

- Tag v1.3.0 release [\#188](https://github.com/nubisproject/nubis-builder/issues/188)

**Merged pull requests:**

- Update CHANGELOG for v1.3.0 release [\#190](https://github.com/nubisproject/nubis-builder/pull/190) ([tinnightcap](https://github.com/tinnightcap))
- Update variables-dist file to be current [\#189](https://github.com/nubisproject/nubis-builder/pull/189) ([tinnightcap](https://github.com/tinnightcap))
- update nubis-travis to v0.1.3 [\#187](https://github.com/nubisproject/nubis-builder/pull/187) ([gozer](https://github.com/gozer))
- Fixing small typo [\#186](https://github.com/nubisproject/nubis-builder/pull/186) ([limed](https://github.com/limed))
- Enable Travis-CI with nubis-travis [\#185](https://github.com/nubisproject/nubis-builder/pull/185) ([gozer](https://github.com/gozer))

## [v1.3.0-dev](https://github.com/nubisproject/nubis-builder/tree/v1.3.0-dev) (2016-09-17)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.2.3...v1.3.0-dev)

**Closed issues:**

- \[cleanup\] Make sure we run cleanups really last [\#179](https://github.com/nubisproject/nubis-builder/issues/179)
- When building for more than 2 regions, AMIs file ends up empty [\#176](https://github.com/nubisproject/nubis-builder/issues/176)

**Merged pull requests:**

- Update CHANGELOG for v1.3.0-dev release [\#184](https://github.com/nubisproject/nubis-builder/pull/184) ([tinnightcap](https://github.com/tinnightcap))
- Correctly handle any configured regions for AMIs [\#183](https://github.com/nubisproject/nubis-builder/pull/183) ([gozer](https://github.com/gozer))
- Revert local changes that shouldn't have been submitted in my last PR [\#182](https://github.com/nubisproject/nubis-builder/pull/182) ([gozer](https://github.com/gozer))
- Split out the puppet package generation into us, leaving cleanups to do just cleanups [\#181](https://github.com/nubisproject/nubis-builder/pull/181) ([gozer](https://github.com/gozer))
- Ensure we run our housecleaner really last [\#180](https://github.com/nubisproject/nubis-builder/pull/180) ([gozer](https://github.com/gozer))

## [v1.2.3](https://github.com/nubisproject/nubis-builder/tree/v1.2.3) (2016-08-05)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.2.2...v1.2.3)

**Closed issues:**

- Tag v1.2.3 release [\#173](https://github.com/nubisproject/nubis-builder/issues/173)

**Merged pull requests:**

- Update CHANGELOG for v1.2.3 release [\#174](https://github.com/nubisproject/nubis-builder/pull/174) ([gozer](https://github.com/gozer))
- Fix build errors for issue \#171 [\#172](https://github.com/nubisproject/nubis-builder/pull/172) ([tinnightcap](https://github.com/tinnightcap))

## [v1.2.2](https://github.com/nubisproject/nubis-builder/tree/v1.2.2) (2016-08-02)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.2.1...v1.2.2)

**Closed issues:**

- Tag v1.2.2 release [\#169](https://github.com/nubisproject/nubis-builder/issues/169)

**Merged pull requests:**

- Update CHANGELOG for v1.2.2 release [\#170](https://github.com/nubisproject/nubis-builder/pull/170) ([tinnightcap](https://github.com/tinnightcap))
- Update CHANGELOG for v1.2.1 release [\#168](https://github.com/nubisproject/nubis-builder/pull/168) ([tinnightcap](https://github.com/tinnightcap))
- Update CHANGELOG for v1.2.1 release [\#167](https://github.com/nubisproject/nubis-builder/pull/167) ([tinnightcap](https://github.com/tinnightcap))
- Update aws-vault with timeout option [\#166](https://github.com/nubisproject/nubis-builder/pull/166) ([tinnightcap](https://github.com/tinnightcap))

## [v1.2.1](https://github.com/nubisproject/nubis-builder/tree/v1.2.1) (2016-07-30)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.2.0...v1.2.1)

**Closed issues:**

- Tag v1.2.1 release [\#164](https://github.com/nubisproject/nubis-builder/issues/164)

**Merged pull requests:**

- Update CHANGELOG for v1.2.1 release [\#165](https://github.com/nubisproject/nubis-builder/pull/165) ([tinnightcap](https://github.com/tinnightcap))
- Warn if ATLAS\_BUILD\_USERNAME isn't set when ATLAS\_TOKEN is [\#163](https://github.com/nubisproject/nubis-builder/pull/163) ([gozer](https://github.com/gozer))

## [v1.2.0](https://github.com/nubisproject/nubis-builder/tree/v1.2.0) (2016-07-07)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.1.0...v1.2.0)

**Implemented enhancements:**

- Add support for CentOS [\#79](https://github.com/nubisproject/nubis-builder/issues/79)

**Closed issues:**

- Tag v1.2.0 release [\#161](https://github.com/nubisproject/nubis-builder/issues/161)
- AMI search incorrectly returns dev versions of requested images [\#158](https://github.com/nubisproject/nubis-builder/issues/158)
- Add support for aws-vault [\#155](https://github.com/nubisproject/nubis-builder/issues/155)

**Merged pull requests:**

- Update CHANGELOG for v1.2.0 release [\#162](https://github.com/nubisproject/nubis-builder/pull/162) ([tinnightcap](https://github.com/tinnightcap))
- handle spaces in AMI searching, ugly [\#159](https://github.com/nubisproject/nubis-builder/pull/159) ([gozer](https://github.com/gozer))
- Implement support for building CentOS 7 AMIs [\#157](https://github.com/nubisproject/nubis-builder/pull/157) ([gozer](https://github.com/gozer))
- Add transparent support for aws-vault [\#156](https://github.com/nubisproject/nubis-builder/pull/156) ([gozer](https://github.com/gozer))

## [v1.1.0](https://github.com/nubisproject/nubis-builder/tree/v1.1.0) (2016-04-18)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.0.1-final3...v1.1.0)

**Closed issues:**

- project\_version breaks artifacts if it contains a space [\#152](https://github.com/nubisproject/nubis-builder/issues/152)
- Tag v1.1.0 release [\#75](https://github.com/nubisproject/nubis-builder/issues/75)
- Tag v1.1.0 release [\#115](https://github.com/nubisproject/nubis-builder/issues/115)

**Merged pull requests:**

- Create artifacts directory if it does not exist [\#154](https://github.com/nubisproject/nubis-builder/pull/154) ([tinnightcap](https://github.com/tinnightcap))
- Support spaces in the project\_version [\#153](https://github.com/nubisproject/nubis-builder/pull/153) ([gozer](https://github.com/gozer))

## [v1.0.1-final3](https://github.com/nubisproject/nubis-builder/tree/v1.0.1-final3) (2016-02-26)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.0.1-final2...v1.0.1-final3)

**Closed issues:**

- Store artifacts under nubis/builder/artifacts [\#150](https://github.com/nubisproject/nubis-builder/issues/150)
- Retrieve puppet package version file locally [\#148](https://github.com/nubisproject/nubis-builder/issues/148)
- Default to nubis-base as source AMIs [\#146](https://github.com/nubisproject/nubis-builder/issues/146)

**Merged pull requests:**

- Stash artifacts under nubis/builder/artifacts/ [\#151](https://github.com/nubisproject/nubis-builder/pull/151) ([gozer](https://github.com/gozer))
- Retrieve puppet package list locally, into nubis/builder/AMI-{{ build\_name }}-package-versions.pp [\#149](https://github.com/nubisproject/nubis-builder/pull/149) ([gozer](https://github.com/gozer))
- Use nubis-base as the default AMIs to build from [\#147](https://github.com/nubisproject/nubis-builder/pull/147) ([gozer](https://github.com/gozer))

## [v1.0.1-final2](https://github.com/nubisproject/nubis-builder/tree/v1.0.1-final2) (2016-02-25)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.0.1-final...v1.0.1-final2)

**Closed issues:**

- Allow deregistering of AMIs [\#143](https://github.com/nubisproject/nubis-builder/issues/143)
- Inject git tag and branch as AMI tags [\#142](https://github.com/nubisproject/nubis-builder/issues/142)
- Handle Semantic Versions in sorting [\#140](https://github.com/nubisproject/nubis-builder/issues/140)
- Don't run puppet-librarian clean by default [\#136](https://github.com/nubisproject/nubis-builder/issues/136)
- nubis-builder: Add --builders flag to override which builders to use. [\#134](https://github.com/nubisproject/nubis-builder/issues/134)
- Typo fixes [\#130](https://github.com/nubisproject/nubis-builder/issues/130)
- Packer now cleans up ebs volumes by itself, we don't need the workaround for it anymore [\#128](https://github.com/nubisproject/nubis-builder/issues/128)
- Allow for more information in the AMI name, after the platform. [\#123](https://github.com/nubisproject/nubis-builder/issues/123)
- Include an Atlas artifact post-processor if the ATLAS\_TOKEN environment variable [\#120](https://github.com/nubisproject/nubis-builder/issues/120)
- Run the housekeeper script from the image itself [\#116](https://github.com/nubisproject/nubis-builder/issues/116)
- cloud-init applies security updates on boot. [\#77](https://github.com/nubisproject/nubis-builder/issues/77)
- Remove puppet-templates.json [\#74](https://github.com/nubisproject/nubis-builder/issues/74)

**Merged pull requests:**

- Add git branch and hash as AMI tags [\#145](https://github.com/nubisproject/nubis-builder/pull/145) ([gozer](https://github.com/gozer))
- Allow duplicate AMI names via deregistering [\#144](https://github.com/nubisproject/nubis-builder/pull/144) ([gozer](https://github.com/gozer))
- Handle semantic versionning when we sort versions. [\#141](https://github.com/nubisproject/nubis-builder/pull/141) ([gozer](https://github.com/gozer))
- Clean up docker tagging a bit [\#139](https://github.com/nubisproject/nubis-builder/pull/139) ([gozer](https://github.com/gozer))
- Add a --builders option to override which builders to use. [\#138](https://github.com/nubisproject/nubis-builder/pull/138) ([gozer](https://github.com/gozer))
- Add a --clean option to nubis-librarian, off by default [\#137](https://github.com/nubisproject/nubis-builder/pull/137) ([gozer](https://github.com/gozer))
- Prototype: Support for a 'docker-ubuntu' builder type, based on LTS [\#133](https://github.com/nubisproject/nubis-builder/pull/133) ([gozer](https://github.com/gozer))
- Fixing some typos [\#131](https://github.com/nubisproject/nubis-builder/pull/131) ([limed](https://github.com/limed))
- Packer now cleans up volumes proprely, we don't need to override anything anymore [\#129](https://github.com/nubisproject/nubis-builder/pull/129) ([gozer](https://github.com/gozer))
- Disable apt upgrade on boot [\#127](https://github.com/nubisproject/nubis-builder/pull/127) ([gozer](https://github.com/gozer))
- Disable apt upgrade on boot [\#126](https://github.com/nubisproject/nubis-builder/pull/126) ([gozer](https://github.com/gozer))
- Remove puppet-template support, as it never worked [\#125](https://github.com/nubisproject/nubis-builder/pull/125) ([gozer](https://github.com/gozer))
- Just match AMI names while permitting there to be arbitrary stuff after the platform \(the end of the name\) [\#124](https://github.com/nubisproject/nubis-builder/pull/124) ([gozer](https://github.com/gozer))
- Remove unneeded ATLAS\_ORGANIZATION support, Atlas tells us this [\#122](https://github.com/nubisproject/nubis-builder/pull/122) ([gozer](https://github.com/gozer))
- If ATLAS\_TOKEN and ATLAS\_ORGANIZATION are set in the current environment, enable the Atlas artifact registration post-processor [\#121](https://github.com/nubisproject/nubis-builder/pull/121) ([gozer](https://github.com/gozer))
- Add missed substitution [\#118](https://github.com/nubisproject/nubis-builder/pull/118) ([gozer](https://github.com/gozer))
- Remove our own housekeeper and invoke the one included in the image, if present. [\#117](https://github.com/nubisproject/nubis-builder/pull/117) ([gozer](https://github.com/gozer))

## [v1.0.1-final](https://github.com/nubisproject/nubis-builder/tree/v1.0.1-final) (2015-11-20)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.0.4...v1.0.1-final)

**Closed issues:**

- Tag  release [\#111](https://github.com/nubisproject/nubis-builder/issues/111)
- \[builder\] Don't assume there is a default profile [\#106](https://github.com/nubisproject/nubis-builder/issues/106)

**Merged pull requests:**

- Update CHANGELOG for v1.0.1 release [\#114](https://github.com/nubisproject/nubis-builder/pull/114) ([tinnightcap](https://github.com/tinnightcap))
- Add retry logic and AMIs file [\#113](https://github.com/nubisproject/nubis-builder/pull/113) ([tinnightcap](https://github.com/tinnightcap))
- When not specifiying a profile with the -p option, don't assume we can safely use one called 'profile' [\#107](https://github.com/nubisproject/nubis-builder/pull/107) ([gozer](https://github.com/gozer))

## [v1.0.4](https://github.com/nubisproject/nubis-builder/tree/v1.0.4) (2015-10-05)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.0.3...v1.0.4)

**Closed issues:**

- cleanup leftover /tmp/packer-puppet-masterless [\#101](https://github.com/nubisproject/nubis-builder/issues/101)

**Merged pull requests:**

- Releasing v1.0.4 [\#105](https://github.com/nubisproject/nubis-builder/pull/105) ([gozer](https://github.com/gozer))
- Add functionlaity to support directory load model [\#104](https://github.com/nubisproject/nubis-builder/pull/104) ([tinnightcap](https://github.com/tinnightcap))
- Adjust Puppetfile functionality [\#103](https://github.com/nubisproject/nubis-builder/pull/103) ([tinnightcap](https://github.com/tinnightcap))
- cleanup leftover /tmp/packer-puppet-masterless [\#102](https://github.com/nubisproject/nubis-builder/pull/102) ([gozer](https://github.com/gozer))
- Releasing v1.0.3 [\#100](https://github.com/nubisproject/nubis-builder/pull/100) ([gozer](https://github.com/gozer))

## [v1.0.3](https://github.com/nubisproject/nubis-builder/tree/v1.0.3) (2015-09-30)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.0.2...v1.0.3)

**Closed issues:**

- nubis-consul assumes us-west-2 [\#95](https://github.com/nubisproject/nubis-builder/issues/95)
- Should use https for consul URL [\#81](https://github.com/nubisproject/nubis-builder/issues/81)

**Merged pull requests:**

- Add a --quiet flag to NOT output Consul values [\#98](https://github.com/nubisproject/nubis-builder/pull/98) ([gozer](https://github.com/gozer))
- Make script region and profile aware [\#96](https://github.com/nubisproject/nubis-builder/pull/96) ([tinnightcap](https://github.com/tinnightcap))

## [v1.0.2](https://github.com/nubisproject/nubis-builder/tree/v1.0.2) (2015-09-04)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.0.1...v1.0.2)

**Merged pull requests:**

- Allow looking up public nubis-base images in a public account [\#93](https://github.com/nubisproject/nubis-builder/pull/93) ([gozer](https://github.com/gozer))
- Release v1.0.1 [\#92](https://github.com/nubisproject/nubis-builder/pull/92) ([gozer](https://github.com/gozer))

## [v1.0.1](https://github.com/nubisproject/nubis-builder/tree/v1.0.1) (2015-08-31)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v1.0.0...v1.0.1)

**Implemented enhancements:**

- nubis-consul script should be region and profile aware [\#110](https://github.com/nubisproject/nubis-builder/issues/110)
- Add puppet modules instead of replace [\#109](https://github.com/nubisproject/nubis-builder/issues/109)
- Add puppet directory loading to base builds [\#108](https://github.com/nubisproject/nubis-builder/issues/108)
- \[nubis-consul\] Outputs could be considered private, so outputting them unconditionnally is a bad idea [\#97](https://github.com/nubisproject/nubis-builder/issues/97)
- \[nubis-consul\] Support reaching Consul via https:// [\#90](https://github.com/nubisproject/nubis-builder/issues/90)

**Fixed bugs:**

- Add puppet modules instead of replace [\#109](https://github.com/nubisproject/nubis-builder/issues/109)
- nubis-builder assumes it can lookup tags for public AMIs, but Amazon doesn't allow [\#84](https://github.com/nubisproject/nubis-builder/issues/84)

**Closed issues:**

- Tag v1.0.1 release [\#112](https://github.com/nubisproject/nubis-builder/issues/112)
- Tag v1.0.3 release [\#99](https://github.com/nubisproject/nubis-builder/issues/99)
- Tag v1.0.1 release  [\#85](https://github.com/nubisproject/nubis-builder/issues/85)

**Merged pull requests:**

- Use https:// to talk to Consul [\#91](https://github.com/nubisproject/nubis-builder/pull/91) ([gozer](https://github.com/gozer))
- start dev cycle [\#89](https://github.com/nubisproject/nubis-builder/pull/89) ([gozer](https://github.com/gozer))

## [v1.0.0](https://github.com/nubisproject/nubis-builder/tree/v1.0.0) (2015-08-30)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/v0.9.0...v1.0.0)

**Closed issues:**

- nubis-builder assumes base images are in our own account [\#82](https://github.com/nubisproject/nubis-builder/issues/82)
- Tag v1.0.0 release [\#76](https://github.com/nubisproject/nubis-builder/issues/76)

**Merged pull requests:**

- CHANGELOG for v1.0.0 [\#88](https://github.com/nubisproject/nubis-builder/pull/88) ([gozer](https://github.com/gozer))
- Fix bug, incorrect handling of jq's null [\#87](https://github.com/nubisproject/nubis-builder/pull/87) ([gozer](https://github.com/gozer))
- Added acl token support [\#86](https://github.com/nubisproject/nubis-builder/pull/86) ([limed](https://github.com/limed))
- Add a new variable, nubis\_account\_id, to allow nubis-builder to search for public AMIs \(nubis-base\) to derive builds from. [\#83](https://github.com/nubisproject/nubis-builder/pull/83) ([gozer](https://github.com/gozer))
- Disable security updates on boot, fixes issue \#77 [\#78](https://github.com/nubisproject/nubis-builder/pull/78) ([gozer](https://github.com/gozer))

## [v0.9.0](https://github.com/nubisproject/nubis-builder/tree/v0.9.0) (2015-07-22)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/1.1...v0.9.0)

**Fixed bugs:**

- Packer 0.8.1 seems to break nubis-builder [\#69](https://github.com/nubisproject/nubis-builder/issues/69)
- Fix instance-store images [\#59](https://github.com/nubisproject/nubis-builder/issues/59)

**Closed issues:**

- sudo errors causing packer builds to fail [\#71](https://github.com/nubisproject/nubis-builder/issues/71)
- Move the creation of /etc/puppet/nubis/{files,templates} to the base image [\#63](https://github.com/nubisproject/nubis-builder/issues/63)
- Intermittently, packer fails with Error launching source instance: The security group 'sg-xxxxxx' does not exist in VPC 'vpc-yyyyyy' [\#42](https://github.com/nubisproject/nubis-builder/issues/42)
- Version bump sometimes picks an in-use version [\#41](https://github.com/nubisproject/nubis-builder/issues/41)
- Builder errors out when running consul post-processor [\#39](https://github.com/nubisproject/nubis-builder/issues/39)
- When ec2-bundle-volume is running under an IAM Role, it needs special care to work [\#28](https://github.com/nubisproject/nubis-builder/issues/28)
- the secrets.json documentation link appears to be broken [\#47](https://github.com/nubisproject/nubis-builder/issues/47)

**Merged pull requests:**

- Updating changelog for v0.9.0 release [\#73](https://github.com/nubisproject/nubis-builder/pull/73) ([gozer](https://github.com/gozer))
- Fixes packer build issue after 0.8.1 upgrade [\#72](https://github.com/nubisproject/nubis-builder/pull/72) ([limed](https://github.com/limed))
- Add volume\_size option, fixes \#69 [\#70](https://github.com/nubisproject/nubis-builder/pull/70) ([gozer](https://github.com/gozer))
- Cosmetic fixes to nubis-consul output [\#67](https://github.com/nubisproject/nubis-builder/pull/67) ([limed](https://github.com/limed))
- Make sure we copy the puppet files \*before\* we invoke puppet [\#65](https://github.com/nubisproject/nubis-builder/pull/65) ([gozer](https://github.com/gozer))
- Move puppet files/templates directory creation to base image. Fixes \#63 [\#64](https://github.com/nubisproject/nubis-builder/pull/64) ([gozer](https://github.com/gozer))
- Improve documentation for the aws\_region variable. [\#62](https://github.com/nubisproject/nubis-builder/pull/62) ([gozer](https://github.com/gozer))
- jq for linux [\#61](https://github.com/nubisproject/nubis-builder/pull/61) ([glogiotatidis](https://github.com/glogiotatidis))
- Fix instance-store images builds. Fixes \#59 [\#60](https://github.com/nubisproject/nubis-builder/pull/60) ([gozer](https://github.com/gozer))
- verbose-- [\#57](https://github.com/nubisproject/nubis-builder/pull/57) ([gozer](https://github.com/gozer))
- New Feature: if there is nubis/puppet/{files,templates} directory in the [\#56](https://github.com/nubisproject/nubis-builder/pull/56) ([gozer](https://github.com/gozer))
- no need to copy Hiera stuff anymore [\#55](https://github.com/nubisproject/nubis-builder/pull/55) ([gozer](https://github.com/gozer))
- Dont use Hiera anymore [\#54](https://github.com/nubisproject/nubis-builder/pull/54) ([gozer](https://github.com/gozer))
- Taking out the last trailing comma in variables [\#53](https://github.com/nubisproject/nubis-builder/pull/53) ([cshields](https://github.com/cshields))
- add homebrew instructions for OS X users [\#52](https://github.com/nubisproject/nubis-builder/pull/52) ([floatingatoll](https://github.com/floatingatoll))
- changing 'Clone' to 'Fork' [\#51](https://github.com/nubisproject/nubis-builder/pull/51) ([Sheeri](https://github.com/Sheeri))
- Updates for renaming nubis-blank to nubis-skel [\#50](https://github.com/nubisproject/nubis-builder/pull/50) ([tinnightcap](https://github.com/tinnightcap))
- Documentation and multi stack updates [\#49](https://github.com/nubisproject/nubis-builder/pull/49) ([tinnightcap](https://github.com/tinnightcap))
- Adding consul script as it is now being used by multiple projects [\#48](https://github.com/nubisproject/nubis-builder/pull/48) ([tinnightcap](https://github.com/tinnightcap))
- Default to gp2 \(SSD\) drives for instances, but don't assume that when [\#46](https://github.com/nubisproject/nubis-builder/pull/46) ([gozer](https://github.com/gozer))
- Add launch\_block\_device\_mappings as a work around to ensure packer created volumes get deleted once AMIs are built. [\#45](https://github.com/nubisproject/nubis-builder/pull/45) ([gozer](https://github.com/gozer))

## [1.1](https://github.com/nubisproject/nubis-builder/tree/1.1) (2015-03-31)
[Full Changelog](https://github.com/nubisproject/nubis-builder/compare/1.0...1.1)

**Closed issues:**

- Tag releases [\#30](https://github.com/nubisproject/nubis-builder/issues/30)
- Documentation [\#16](https://github.com/nubisproject/nubis-builder/issues/16)

**Merged pull requests:**

- Code clean up and fixing instance-store builds  [\#43](https://github.com/nubisproject/nubis-builder/pull/43) ([bhourigan](https://github.com/bhourigan))
- Adding documentation [\#40](https://github.com/nubisproject/nubis-builder/pull/40) ([bhourigan](https://github.com/bhourigan))
- Missing coma [\#38](https://github.com/nubisproject/nubis-builder/pull/38) ([tinnightcap](https://github.com/tinnightcap))
- Following the advice from https://www.packer.io/intro/getting-started/provision.html [\#37](https://github.com/nubisproject/nubis-builder/pull/37) ([gozer](https://github.com/gozer))

## [1.0](https://github.com/nubisproject/nubis-builder/tree/1.0) (2015-03-24)
**Closed issues:**

- Pin Amazon Linux to 2014.09.2 and/or modify upstream AMI sourcing to exclude release candidates [\#34](https://github.com/nubisproject/nubis-builder/issues/34)
- Cleanup log files before making the AMIs [\#32](https://github.com/nubisproject/nubis-builder/issues/32)
- Intermittent build failure : Package ec2-ami-tools is not available [\#29](https://github.com/nubisproject/nubis-builder/issues/29)
- Allow nubis-builder build to function without aws credentials \(using STS\) if the machine running nubis-build itself has access to an IAM role [\#24](https://github.com/nubisproject/nubis-builder/issues/24)
- Create a /etc/nubis-$project-release file [\#23](https://github.com/nubisproject/nubis-builder/issues/23)
- Make builder make AMIs public by default [\#22](https://github.com/nubisproject/nubis-builder/issues/22)
- Add --dry-run [\#19](https://github.com/nubisproject/nubis-builder/issues/19)
- nubis-builder always increments version when automatic\_version\_bump is set [\#13](https://github.com/nubisproject/nubis-builder/issues/13)
- Re-enable instance-store builds [\#10](https://github.com/nubisproject/nubis-builder/issues/10)
- Make project\_version automatically update if there is a version colision [\#9](https://github.com/nubisproject/nubis-builder/issues/9)
- Make builder selection more robust [\#8](https://github.com/nubisproject/nubis-builder/issues/8)
- aws cli tool should use same credentials as packer [\#7](https://github.com/nubisproject/nubis-builder/issues/7)
- Add puppet provisioner that will be used for projects [\#6](https://github.com/nubisproject/nubis-builder/issues/6)
- When using --verbose, pass this along to packer [\#5](https://github.com/nubisproject/nubis-builder/issues/5)
- Add flag to preserve json file in the event of an error [\#4](https://github.com/nubisproject/nubis-builder/issues/4)
- Not all projects need to build for 4 platforms [\#2](https://github.com/nubisproject/nubis-builder/issues/2)
- Add MPL2 license. [\#1](https://github.com/nubisproject/nubis-builder/issues/1)

**Merged pull requests:**

- Baking in version [\#36](https://github.com/nubisproject/nubis-builder/pull/36) ([bhourigan](https://github.com/bhourigan))
- Excluding AMIs who has a .Name which contains '.rc-', jq supports regex ... [\#35](https://github.com/nubisproject/nubis-builder/pull/35) ([bhourigan](https://github.com/bhourigan))
- AWS IAM bugfix and addressing Issue 32 [\#33](https://github.com/nubisproject/nubis-builder/pull/33) ([bhourigan](https://github.com/bhourigan))
- Adding --version [\#31](https://github.com/nubisproject/nubis-builder/pull/31) ([bhourigan](https://github.com/bhourigan))
- Conditional bundle\_upload\_command appending [\#27](https://github.com/nubisproject/nubis-builder/pull/27) ([bhourigan](https://github.com/bhourigan))
- Forgot that these inline scripts run as an unprivileged user [\#26](https://github.com/nubisproject/nubis-builder/pull/26) ([bhourigan](https://github.com/bhourigan))
- Addressing https://github.com/Nubisproject/nubis-builder/issues/24 [\#25](https://github.com/nubisproject/nubis-builder/pull/25) ([bhourigan](https://github.com/bhourigan))
- Adding create option [\#21](https://github.com/nubisproject/nubis-builder/pull/21) ([bhourigan](https://github.com/bhourigan))
- Module improvements [\#20](https://github.com/nubisproject/nubis-builder/pull/20) ([bhourigan](https://github.com/bhourigan))
- disable eu-west-1 for now, it just slows things down [\#18](https://github.com/nubisproject/nubis-builder/pull/18) ([gozer](https://github.com/gozer))
- A few small fixes & restoring instance-store builders [\#17](https://github.com/nubisproject/nubis-builder/pull/17) ([bhourigan](https://github.com/bhourigan))
- Refactoring AMI generation & adding builder verbosity [\#15](https://github.com/nubisproject/nubis-builder/pull/15) ([bhourigan](https://github.com/bhourigan))
- Adding --sort-keys to jq when bumping version [\#14](https://github.com/nubisproject/nubis-builder/pull/14) ([bhourigan](https://github.com/bhourigan))
- Automatic project\_path discovery [\#12](https://github.com/nubisproject/nubis-builder/pull/12) ([bhourigan](https://github.com/bhourigan))
- Instead of requiring a --builder-prefix, why not just find ourselves? [\#11](https://github.com/nubisproject/nubis-builder/pull/11) ([gozer](https://github.com/gozer))
- Fix script errors [\#3](https://github.com/nubisproject/nubis-builder/pull/3) ([tinnightcap](https://github.com/tinnightcap))



\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*