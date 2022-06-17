terraform {
   backend "s3" {
     bucket = "udacity-tf-hui-west"
     key    = "terraform/terraform.tfstate"
     region = "us-west-2"
   }
 }

 provider "aws" {
   region = "us-west-2"
   #profile = "default"
   
   default_tags {
     tags = local.tags
   }
 }