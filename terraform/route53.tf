# resource "aws_route53_zone" "pistack_domain_route53_zone" {
#   name = var.domain_name
#   tags = var.common_tags
# }

# resource "aws_route53_record" "pistack_a_record" {
#   zone_id = aws_route53_zone.pistack_domain_route53_zone.zone_id
#   name    = format("pistack.%s", var.domain_name)
#   type    = "A"
#   ttl     = "3600"
#   records = [var.pistack_ip]
# }