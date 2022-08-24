variable "name" {
  type    = string
  default = ""
}

variable "lambdas_tracing_mode" {
  type    = string
  default = "PassThrough"
}

variable "lambdas_datadog_layer_arn" {
  type    = string
  default = ""
}

variable "lambdas_dependencies_nodejs_layer_arn" {
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

variable "products_table_arn" {
  type    = string
  default = ""
}

variable "lambdas_brands_write_dynamodb_zip" {
  type    = string
  default = ""
}

variable "sfns_product_write_alerts_topic_arn" {
  type    = string
  default = ""
}
