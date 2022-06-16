provider "aws" {
  region = "us-west-2"
}

module "computesoftware-roles" {
  source = "../.."
  platform_role_external_id = "abc123"
  dynamodb_automation_is_enabled =  true
}
