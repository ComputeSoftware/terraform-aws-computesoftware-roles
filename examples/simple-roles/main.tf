provider "aws" {
  region = "us-west-2"
}

module "computesoftware-roles" {
  source = "../.."
  platform_role_external_id = "abc123"
}