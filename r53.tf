/*
resource "aws_route53_record" "expense" {
  count = 3
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domainname}" #interpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[count.index].private_ip]
  allow_overwrite = true
}


resource "aws_route53_record" "frotend" {
  
  zone_id = var.zone_id
  name    = "${var.domainname}" #interpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[2].private_ip]
  allow_overwrite = true
} */