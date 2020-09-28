provider "aws" {
  region = "us-west-2"
}

module "roles" {
  source = "../.."
  platform_role_external_id = "abc123"
}