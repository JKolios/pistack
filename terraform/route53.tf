resource "aws_route53_zone" "pistack_domain_route53_zone" {
  name = var.domain_name
  tags = var.common_tags
}
