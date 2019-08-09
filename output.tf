output "key_name" { #for Terraform 
  value = "${aws_key_pair.Terraform_machine.key_name}" #will show after aplying public_key, to avoid it add one more option
}
