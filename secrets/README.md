

# nubis-builder secrets

All *.json files in this directory will be loaded by nubis-builder
automatically. It is intended that you store access credentials and other
sensitive data within this directory. All *.json and *.pem files will be ignored
by git.

You can technically store any valid packer json here (such as additional
builders, provisioners, etc) but that's untested and not recommended. If you
have sensitive data within a builder or provisioner you should parameterize it
and store those parameters here.

## Quick Start

If you are following any of the quick start guides you can use this simplified
version of the variables.json file. The portions we leave out are necessary only
if you are building ephemeral (non ebs backed) EC2 instances. In this case use
the following example file, making sure to insert your AWS API keys where
necessary. This example will build in us-west-2 (Oregon). If you wish to build
in another region/account (or not using Mozilla credentials) these setting will
not work for you and you should read the long descriptions below.

Quick start example variables.json:

```JSON
{
  "variables": {
    "aws_access_key": "",
    "aws_secret_key": "",
    "aws_account_id": "647505682097",
    "aws_region": "us-west-2",
    "ami_regions": "us-east-1,us-west-2",
    "iam_instance_profile": "",
    "nubis_account_id": ""
  }
}
```

## The Variables file

Full example variables.json:

```JSON
{
  "variables": {
    "aws_access_key": "",
    "aws_secret_key": "",
    "aws_account_id": "",
    "aws_region": "us-west-2",
    "ami_regions": "us-east-1,us-west-2",
    "aws_instance_s3_bucket": "",
    "aws_x509_cert_path": "/full/path/to/secrets/aws.crt.pem",
    "aws_x509_key_path": "/full/path/to/secrets/aws.key.pem",
    "iam_instance_profile": "",
    "nubis_account_id": ""
  }
}
```

### Variable descriptions

#### aws_access_key and aws_secret_key

Your AWS API credentials. If you're running nubis-builder on a EC2 instance you
should use an IAM roles instead.

#### aws_region

The region that your packer builder instances will run in. Please use
*ami_regions* to copy AMIs to other regions, you do not need to build in every
region.

#### ami_regions

The regions (commma-separated) to copy the AMIs to

#### aws_account_id

Your AWS Account ID. This is used for instance-store backed AMI building,
required by packer. See the [packer documentation](https://www.packer.io/docs/builders/amazon-instance.html)
for more information.

#### aws_instance_s3_bucket, aws_x509_cert_path, aws_x509_key_path

Additional packer parameters for the instance-store builder. Your instance-store
builds will be stored in the bucket specified by aws_instance_s3_bucket. The
certificates specified by aws_x509_cert_path and aws_x509_key_path are passed to
*ec2-bundle-vol* during the build process.

#### iam_instance_profile

This is the instance profile that your EC2 builders will be launched under. You
can use this to facilitate access to private S3 buckets, for example.

#### nubis_account_id

This is the account ID where public Nubis images (like nubis-base) are published
and should be searched for. Youcan set this to a different account if you wish
or the special value 'self' to look in your own account.
