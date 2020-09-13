resource "aws_acm_certificate" "certificate" {
  domain_name = var.domain_name
  # note will need to go into console and add verification CNAME
  validation_method = "DNS"

  # certificate has to be created in us-east-1
  # https://aws.amazon.com/certificate-manager/faqs/#:~:text=To%20use%20an%20ACM%20certificate,locations%20configured%20for%20that%20distribution.
  provider = aws.virginia

  tags = {
    Project = var.domain_name
  }
}
