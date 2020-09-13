terraform {
  # this means the tfstate will be stored in S3 rather than on local machine:
  backend "s3" {
    # bucket, key and region all specified in separate backend.tfvars file
    # and passed to terraform via init's -backend-config option
  }
}
