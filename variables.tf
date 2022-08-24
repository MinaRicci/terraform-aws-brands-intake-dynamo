variable "name" {
  type    = string
  default = ""
}

variable "lambdas_tracing_mode" {
  type    = string
  default = "PassThrough"
}

variable "datadog_layer_arn" {
  type    = string
  default = ""
}

variable "brands-write-dynamodb_staging_env" {
  type    = map(any)
  default = {}
}

variable "runtime_nodejs" {
  type    = string
  default = "nodejs14.x"
}

variable "s3_artifacts_bucket" {
  type    = string
  default = "pmlo-deployment-artifacts"
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "lambdas_brands_write_dynamodb_zip" {
  type    = string
  default = ""
}

variable "lambdas_brands_write_dynamodb_version" {
  type    = string
  default = ""
}