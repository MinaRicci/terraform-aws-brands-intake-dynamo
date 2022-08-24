
# Pomelo.

## terraform-aws-product-write-outbound 🏗 🏢 🏬

`terraform-aws-product-brands-intake-dynamo` is a terraform module that is used to create custom AWS Lambda.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have a Mac / Linux Workstation.
- You have installed the following software:
  -  Terraform (`~> v0.14.0`)
- You have read all [guides](https://pomelofashion.atlassian.net/wiki/spaces/ENG/pages/809697581/Terraform) and documentation related to this project.

## Module documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.44 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.44 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_brands_write_dynamodb"></a> [product\_write\_fn\_contentful](#module\_product\_write\_fn\_contentful) | terraform-aws-modules/lambda/aws | 2.27.1 |
## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_lambdas_contentful_env_vars"></a> [lambdas\_contentful\_env\_vars](#input\_lambdas\_contentful\_env\_vars) | n/a | `map(any)` | `{}` | no |
| <a name="input_lambdas_datadog_layer_arn"></a> [lambdas\_datadog\_layer\_arn](#input\_lambdas\_datadog\_layer\_arn) | n/a | `string` | `""` | no |
| <a name="input_lambdas_product_write_contentful_version"></a> [lambdas\_product\_write\_contentful\_version](#input\_lambdas\_product\_write\_contentful\_version) | n/a | `string` | `""` | no |
| <a name="input_lambdas_product_write_contentful_zip"></a> [lambdas\_product\_write\_contentful\_zip](#input\_lambdas\_product\_write\_contentful\_zip) | n/a | `string` | `""` | no |
| <a name="input_lambdas_product_write_shopify_version"></a> [lambdas\_product\_write\_shopify\_version](#input\_lambdas\_product\_write\_shopify\_version) | n/a | `string` | `""` | no |
| <a name="input_lambdas_product_write_shopify_zip"></a> [lambdas\_product\_write\_shopify\_zip](#input\_lambdas\_product\_write\_shopify\_zip) | n/a | `string` | `""` | no |
| <a name="input_lambdas_products_version"></a> [lambdas\_products\_version](#input\_lambdas\_products\_version) | n/a | `string` | `""` | no |
| <a name="input_lambdas_products_zip"></a> [lambdas\_products\_zip](#input\_lambdas\_products\_zip) | n/a | `string` | `""` | no |
| <a name="input_lambdas_shopify_env_vars"></a> [lambdas\_shopify\_env\_vars](#input\_lambdas\_shopify\_env\_vars) | n/a | `map(any)` | `{}` | no |
| <a name="input_lambdas_tracing_mode"></a> [lambdas\_tracing\_mode](#input\_lambdas\_tracing\_mode) | n/a | `string` | `"PassThrough"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `""` | no |
| <a name="input_products_table_arn"></a> [products\_table\_arn](#input\_products\_table\_arn) | n/a | `string` | `""` | no |
| <a name="input_runtime_nodejs"></a> [runtime\_nodejs](#input\_runtime\_nodejs) | n/a | `string` | `"nodejs14.x"` | no |
| <a name="input_s3_artifacts_bucket"></a> [s3\_artifacts\_bucket](#input\_s3\_artifacts\_bucket) | n/a | `string` | `"pmlo-deployment-artifacts"` | no |
| <a name="input_store_region"></a> [store\_region](#input\_store\_region) | n/a | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_product_write_fn_contentful_arn"></a> [product\_write\_fn\_contentful\_arn](#output\_product\_write\_fn\_contentful\_arn) | n/a |
| <a name="output_product_write_fn_contentful_name"></a> [product\_write\_fn\_contentful\_name](#output\_product\_write\_fn\_contentful\_name) | n/a |
| <a name="output_product_write_fn_shopify_arn"></a> [product\_write\_fn\_shopify\_arn](#output\_product\_write\_fn\_shopify\_arn) | n/a |
| <a name="output_product_write_fn_shopify_name"></a> [product\_write\_fn\_shopify\_name](#output\_product\_write\_fn\_shopify\_name) | lambda functions |
| <a name="output_product_write_sfn_arn"></a> [product\_write\_sfn\_arn](#output\_product\_write\_sfn\_arn) | step functions |
| <a name="output_product_write_sfn_id"></a> [product\_write\_sfn\_id](#output\_product\_write\_sfn\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing to `terraform-aws-product-write-outbound`

To contribute to `terraform-aws-product-write-outbound`, follow these steps:

1. Clone this repository.
2. Read [Running code quality checks](#quality-checks).
3. Create a feature branch: `git checkout -b <branch_name>`.
4. Make your changes and commit them: `git commit -m '<commit_message>'`
5. Push to the original branch: `git push origin <branch_name>`
6. Create the pull request against `master`.

**<a name="quality-checks"></a>Running code quality checks:**

To ensure the code quality of this project is kept consistent we make use of pre-commit hooks. To install them, run the commands below.

```bash
brew install pre-commit
pre-commit install --install-hooks -t pre-commit -t commit-msg
```

## Contact

If you want to contact someone about this project, please refer to the following channel: `#eng_squad_devops`
