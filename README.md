# TFstate
This repository hosts a Terraform module for managing specific AWS resources, namely an S3 bucket and a DynamoDB table. The module uses provided AWS access credentials to create and manage these resources.
A simple solution to keep TF state for remote backend.


## Variables

- `aws_access_key`: Your AWS access key. (currently inactive key inserted)
- `aws_secret_key`: Your AWS secret key. (currently inactive key inserted)

These variables are defined in the `variables.tf` file.

## Outputs

- `bucket_id`: The ID of the created S3 bucket.
- `bucket_name`: The name of the created S3 bucket.
- `dynamodb_table_name`: The name of the created DynamoDB table.

These outputs are defined in the `outputs.tf` file.


## Jenkins

While creating jenkins pipeline - make sure you choose:

"This project is parameterized"

Name: 
action

Choices:
plan
apply --auto-approve
destroy --auto-approve
state show a
