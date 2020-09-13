resource "aws_route53_record" "apex_alias" {
  # note, this expects we already have a hosted zone resource created
  # (which is true when domain was bought via route53)
  zone_id = var.hosted_zone_id
  name    = var.domain_name
  type    = "A"
  alias {
    name                   = aws_cloudfront_distribution.web_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.web_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}
