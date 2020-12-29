# Compute Software AWS IAM Roles Terraform Module

Terraform modules which creates AWS IAM roles for use with the [Compute Software Platform](https://www.computesoftware.com/platform).

## Usage 

```hcl
module "computesoftware-roles" {
  source  = "ComputeSoftware/computesoftware-roles/aws"
  version = "1.0.4"
  platform_role_external_id = "<< paste external ID here >>"
}
```

## Examples 

- [Simple roles](https://github.com/ComputeSoftware/terraform-aws-computesoftware-roles/tree/master/examples/simple-roles)

## Inputs

| Name                      	| Description                                                                                     	| Type   	| Default                                    	| Required 	|
|---------------------------	|-------------------------------------------------------------------------------------------------	|--------	|--------------------------------------------	|----------	|
| platform_role_external_id 	| The External ID provided to you from Compute Software.                                          	| string 	|                                            	| yes      	|
| discovery_role_name       	| Discovery IAM Role name.                                                                        	| string 	| `"compute-software-discovery-role"`        	| no       	|
| platform_role_name        	| Platform IAM Role name.                                                                         	| string 	| `"compute-software-platform-role"`         	| no       	|
| trusted_role_arn          	| ARN used for the IAM role sts:AssumeRole principal. Defaults to Compute Software's AWS account. 	| string 	| `"arn:aws:iam::734247230719:root"`         	| no       	|
| read_only_policy_arn      	| ARN for an AWS IAM policy that gives Compute Software read only access.                         	| string 	| `"arn:aws:iam::aws:policy/ReadOnlyAccess"` 	| no       	|
| workspaces_write_access   	| If true, enables AWS WorkSpaces write access.                                                   	| bool   	| false                                      	| no       	|

## Outputs 

| Name               | Description                                              |
|--------------------|----------------------------------------------------------|
| platform_role_arn  | The IAM Role ARN for the Compute Software Platform Role. |
| discovery_role_arn | The IAM Role ARN for the Discovery Role.                 |