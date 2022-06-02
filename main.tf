terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.7"
    }
  }
  backend "s3" {
    bucket = "RENAMEME!" # after running file.sh insert the console output
    key    = "calabs/production/us-west-2/rslab/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-west-2"
}

module "server" {
    count = 3 
    source = "./modules/ec2"

    servername = "testserver${count.index}"
    associate_public_ip_address = false

    ebs_block_device = [
        {
        device_name = "/dev/sdh"
        volume_size = "4"
        volume_type = "standard"
        delete_on_termination = "true"
        },
        {
        device_name = "/dev/sdj"
        volume_size = "4"
        volume_type = "standard"
        delete_on_termination = "true"
        }
    ]

}