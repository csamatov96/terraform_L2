terraform {
    backend "s3" {
        dynamodb_table = "infrastructure_state_lock" #
        bucket = "${var.bucket}"
        region = "us-east-1" #
        key = "infrastructure.tfstate" #was taken from terraform.tfstate
    }
}