# Compute Software AWS IAM Roles Terraform Module

Terraform modules which creates AWS IAM roles for use with the [Compute Software Platform](https://www.computesoftware.com/platform).

## Usage 

```hcl
module "computesoftware-roles" {
  source  = "ComputeSoftware/computesoftware-roles/aws"
  version = "1.0.0"
  platform_role_external_id = "<< paste external ID here >>"
}
```

## Examples 

- [Simple roles](https://github.com/ComputeSoftware/terraform-aws-computesoftware-roles/tree/master/examples/simple-roles)

## Inputs

| Name                      | Description                                                                                     | Type   | Default                                    | Required |
|---------------------------|-------------------------------------------------------------------------------------------------|--------|--------------------------------------------|----------|
| platform_role_external_id | The External ID provided to you from Compute Software.                                          | string |                                            | yes      |
| discovery_role_name       | Discovery IAM Role name.                                                                        |        | `"compute-software-discovery-role"`        | no       |
| platform_role_name        | Platform IAM Role name.                                                                         |        | `"compute-software-platform-role"`         | no       |
| trusted_role_arn          | ARN used for the IAM role sts:AssumeRole principal. Defaults to Compute Software's AWS account. |        | `"arn:aws:iam::734247230719:root"`         | no       |
| read_only_policy_arn      | ARN for an AWS IAM policy that gives Compute Software read only access.                         |        | `"arn:aws:iam::aws:policy/ReadOnlyAccess"` | no       |