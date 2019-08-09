terraform {
    state_storage "s3" {
        bucket = "terraform-state-storage-chyngyzkan"
        region = "us-east-2"
        key = "infrastructure.tfstate"
    }
}