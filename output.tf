output "key_name_it_uses" { #for Terraform 
  value = "${aws_key_pair.Terraform_machine.key_name}" #will show after aplying public_key, to avoid it add one more option
}

output "bucket_name" {
  value = "${aws_s3_bucket.b.bucket}" 
}

output "ID_of_an_instance" {
  value = "${aws_instance.test_ec2.id}"
}

output "its_public_IP" {
  value = "${aws_instance.test_ec2.public_ip}" # 
}

output "its_username" {
  value = "ec2-user" #hardcoded, any text can be written like ec2-user and it'll be showen
}


