resource "aws_s3_bucket" "b" { #is used for Terraform 
  bucket = "my-tf-test-bucket-chyngyzkan" #variable can't be used
  acl    = "private"
  #region = "us-east-2" 

  tags = {
    Name = "${var.ENV}"
        Dept = "${var.Dept}"
        Created_by = "${var.Created_by}"
    }
}