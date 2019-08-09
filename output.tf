output "key_name" { #for Terraform 
  value = "${aws_key_pair.Terraform_machine.key_name}" #will show after aplying public_key, to avoid it add one more option
}

output "bucketname" {
  value = "${aws_s3_bucket.b.bucket}" 
}

output "instance" {
  value = "${aws_instance.test_ec2.id}"
}

