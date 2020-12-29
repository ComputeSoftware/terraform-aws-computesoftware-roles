# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]
## [1.0.4] - 2020-12-29
### Added
- Support for older versions of Terraform (< 0.13). 
  `count` for modules was introduced in newer Terraform versions (0.13+). 
  `count` was used on the workspaces nested module to control its creation. 
  This means the module would fail with “The name "count" is reserved for use in a future version of Terraform.” on older versions of Terraform (< 0.13). 
  This fix adds an `enabled` property to the workspaces nested module to add support for Terraform < 0.13.

## [1.0.3] - 2020-12-28
### Added
- Add `workspaces_write_access` var.
- Add workspaces nested module

## [1.0.2] - 2020-09-28
### Added
- Add `platform_role_external_id` output

## [1.0.1] - 2020-09-28
### Added
- Improve variable and output descriptions

## 1.0.0 - 2020-09-27
### Added
- Initial release

[Unreleased]: https://github.com/ComputeSoftware/terraform-aws-computesoftware-roles/compare/v1.0.2...HEAD
[1.0.2]: https://github.com/ComputeSoftware/terraform-aws-computesoftware-roles/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/ComputeSoftware/terraform-aws-computesoftware-roles/compare/v1.0.0...v1.0.1