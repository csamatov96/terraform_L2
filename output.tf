output "key_name" { #for Terraform 
  value = "${aws_key_pair.Terraform_machine.key_name}" #will show after aplying public_key, to avoid it add one more option
}

output "bucketname" {
  value = "${aws_s3_bucket.b.bucket}" 
}

output "ID" {
  value = "${aws_instance.test_ec2.id}"
}

output "public IP" {
  value = "${aws_instance.test_ec2.public_ip}" #
}

output "username" {
  value = "ec-user" #hardcoded, any text can be written like ec2-user and it'll be showen
}


