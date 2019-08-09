resource "aws_s3_bucket" "b" { #is used for Terraform 
  bucket = "my_tf_test_bucket_chyngyzkan" #an actual name
  acl    = "private"

  tags = {
    Name = "test_env"
    Dept = "DevOps"
    Group = "April"
    Created_by = "JC"
  }
}