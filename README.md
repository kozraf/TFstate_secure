# TFstate
This repository hosts a Terraform module for managing specific AWS resources, namely an S3 bucket and a DynamoDB table. The module uses provided AWS access credentials to create and manage these resources.
A simple solution to keep TF state for remote backend.


## AWS creds

1. Install CloudBees AWS Credentials Plugin
2. Go to credentials and configure new credentials Dashboard -> Manage Jenkins -> and clicking on Global and then Add Credentials, fill AWS access key and secret key and make sure you will capture generated ID of the creds
Credentials
3. In pipeline - use following:

    environment {
        // Load AWS credentials
        AWS_CREDENTIALS = credentials('creds_ID_from_step_2')
    }
4. Check Jenkins file for more info    

## Outputs

- `bucket_id`: The ID of the created S3 bucket.
- `bucket_name`: The name of the created S3 bucket.
- `dynamodb_table_name`: The name of the created DynamoDB table.

These outputs are defined in the `outputs.tf` file.


## Jenkins

Create a new item, name it, choose pipeline, make sure you choose:

"This project is parameterized"

Name: 
- action

Choices:
init
plan
apply
destroy

and add content of jenkins_pipeline.txt to script below the page.