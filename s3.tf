resource "aws_s3_bucket" "production_website_bucket" {
  bucket = var.domain_name
  acl    = "public-read"
  policy = data.aws_iam_policy_document.website_policy.json
  website {
    index_document = "index.html"
    error_document = "404.html"
  }
}

# can use the following to create static s3 website for preprod testing:

# resource "aws_s3_bucket" "staging_website_bucket" {
#   bucket = "${var.domain_name}-staging"
#   acl    = "public-read"
#   policy = data.aws_iam_policy_document.website_policy.json
#   website {
#     index_document = "index.html"
#     error_document = "404.html"
#   }
# }
