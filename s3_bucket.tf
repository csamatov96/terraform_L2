resource "aws_s3_bucket" "b" { #is used for Terraform 
  bucket = "my-tf-test-bucket-chyngyzkan" #an actual name
  acl    = "private"
  #region = "us-east-2" 

  tags = {
    Name = "test_env"
    Dept = "DevOps"
    Group = "April"
    Created_by = "JC"
  }
}