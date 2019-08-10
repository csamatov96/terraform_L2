resource "aws_route53_record" "test" {
  zone_id = "ZSBY94ENV7WM4 " #ZSBY94ENV7WM4
  name    = "test.mydomain.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.test_ec2.public_ip}"]
}