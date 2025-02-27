resource "aws_route53_record" "for_each" {
  for_each = aws_instance.for_each
  zone_id  = var.zone_id
  # myql == mysql.meerjan.online
  # backend == backend.meerjan.online
  # frontend == meerjan.online
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
}