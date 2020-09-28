# Simple Roles

Configuration in this directory provisions the Compute Software IAM roles with the minimal set of configuration.

## Usage

To run this example you need to execute:

```shell script
$ terraform init
$ terraform plan
$ terraform apply
```

Run terraform destroy when you don't need these resources.

## Providers

No provider.

## Inputs

No input.

## Outputs

| Name                      	| Description                                              	|
|---------------------------	|----------------------------------------------------------	|
| platform_role_arn         	| The IAM Role ARN for the Compute Software Platform Role. 	|
| platform_role_external_id 	| The External ID provided to you from Compute Software.   	|
| discovery_role_arn        	| The IAM Role ARN for the Discovery Role.                 	|