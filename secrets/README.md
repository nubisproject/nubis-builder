nubis-builder secrets
=====================

All *.json files in this directory will be loaded by nubis-builder automatically. It is intended that you store 
access credentials and other sensitive data within this directory. All *.json and *.pem files will be ignored by
git.

You can technically store any valid packer json here (such as additional builders, provisioners, etc) but that's 
untested and not recommended. If you have sensitive data within a builder or provisioner you should parameterize 
it and store those parameters here.

Example variables.json:

```JSON
{
  "variables": {
    "aws_access_key": "",
    "aws_secret_key": "",
    "aws_account_id": "",
    "aws_region": "",
    "aws_instance_s3_bucket": "",
    "aws_x509_cert_path": "/full/path/to/secrets/aws.crt.pem",
    "aws_x509_key_path": "/full/path/to/secrets/aws.key.pem",
    "iam_instance_profile": "",
    "iam_instance_role": "",
    "consul_address": "",
    "consul_token": ""
  }
}
```

### Variable documentation ###

#### aws_access_key and aws_secret_key####
Your AWS API credentials. If you're running nubis-builder on a EC2 instance you should use IAM roles instead.

#### aws_region ####
The region that your packer builder instances will run in. Please use the builder parameter *ami_regions* to copy
AMIs to other regions, you do not need to build in every region.

#### aws_account_id ####
Your AWS Account ID. This is used for instance-store backed AMI building, required by packer. See the [packer 
documentation](https://www.packer.io/docs/builders/amazon-instance.html) for more information.

#### aws_instance_s3_bucket, aws_x509_cert_path, aws_x509_key_path ####
Additional packer parameters for the instance-store builder. Your instance-store builds will be stored in the 
bucket specified by aws_instance_s3_bucket. The certificates specified by aws_x509_cert_path and 
aws_x509_key_path are passed to *ec2-bundle-vol* during the build process.

#### iam_instance_profile ####
This is the instance profile that your EC2 builders will be launched under. You can use this to facilitate 
access to private S3 buckets, for example.

#### iam_instance_role ####
Feature under development. Documentation TBD.

#### consul_address, consul_token ####
Feature under development. Documentation TBD.
