provider "aws" {
  region = "us-west-2"
}

module "roles" {
  source = "../.."
  platform_role_external_id = "abc123"
  discovery_role_name = "cs-discovery-test"
  platform_role_name = "cs-platform-test"
}