# TFstate
This repository hosts a Terraform module for managing specific AWS resources, namely an S3 bucket and a DynamoDB table. The module uses provided AWS access credentials to create and manage these resources.
A simple solution to keep TF state for remote backend.


## AWS creds

1. Install CloudBees AWS Credentials Plugin
2. Go to credentials and configore new credentials Dashboard -> Manage Jenkins -> and clicking on Global and then Add Credentials, fill AWS access key and secret key and make sure you will capture generated ID of the creds
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

While creating jenkins pipeline - make sure you choose:

"This project is parameterized"

Name: 
- action

Choices:
- plan
- apply --auto-approve
- destroy --auto-approve
- state show (TF resource name goes here)
- state list
