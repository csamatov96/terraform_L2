terraform {
    backend "s3" {
        backend = "terraform-state-storage-chyngyzkan"
        region = "us-east-2"
        key = "infrastructure.tfstate"
    }
}