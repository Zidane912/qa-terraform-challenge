# qa-terraform-challenge

This repository contains the files that I had used for the Cloud Academy Terraform Challenge.

# How to Use

1. Ensure Terraforms and AWS CLI are installed on your machine

2. Run the file in s3-bukcet-and-encrypt by running: . ./file.sh

3. Insert the output of the name of the s3 bukcet into the main.tf file in the root directory on line 9: bucket = "[CONSOLE_OUTPUT_FROM_STEP_2]"

Then run the follow commands from your command:

4. terraform init
5. terraform plan
6. terraform apply

type 'yes' when prompted

And now an AWS EC2 instance with EBS along with an S3 bucket that is encrypted and a dynamo table have all been deployed.

**NOTE:** this was performed on an virtual environment set up by Cloud Academy therefore other prerequisites may be required.
