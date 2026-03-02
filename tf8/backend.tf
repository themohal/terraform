terraform {
backend "s3" {
    bucket = "farjad-tf-state-bucket"
    key    = "dev/project/terraform.tfstate"
    region = "eu-north-1"
    dynamodb_table = "farjad-tf-locks-table"
    encrypt = true
    }

}