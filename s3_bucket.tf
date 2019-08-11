resource "aws_s3_bucket" "b" { #is used for Terraform 
  bucket = "${var.bucket}" #
  acl    = "private"
  #region = "us-east-2" 

  tags = {
    Name = "${var.ENV}"
        Dept = "${var.Dept}"
        Created_by = "${var.Created_by}"
    }
}