# terraform-module-iam-role

Reusable AWS IAM role module.

## Versioning

Module version is stored in the `VERSION` file.

Consumers should pin using Git tags.

```hcl
module "iam_role" {
  source = "git::https://github.com/your-org/terraform-module-iam-role.git?ref=v1.0.0"
}
```

## Module Documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy"></a> [assume\_role\_policy](#input\_assume\_role\_policy) | Assume role policy JSON | `string` | n/a | yes |
| <a name="input_managed_policy_arns"></a> [managed\_policy\_arns](#input\_managed\_policy\_arns) | Managed policy ARNs to attach | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | IAM role name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to IAM resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_profile_name"></a> [instance\_profile\_name](#output\_instance\_profile\_name) | IAM instance profile name |
| <a name="output_module_version"></a> [module\_version](#output\_module\_version) | Module version from VERSION file |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | IAM role ARN |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | IAM role name |
<!-- END_TF_DOCS -->
