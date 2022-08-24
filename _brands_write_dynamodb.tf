module "brands_write_dynamodb_mkp_instance" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "3.3.1"

  function_name = "brands-write-dynamodb-${var.name}"
  description   = "Sync brands to dynamodb from ${var.name} instance"
  handler       = "src/index.handler"
  runtime       = var.runtime_nodejs
  memory_size   = 512
  timeout       = 6

  s3_existing_package = {
    bucket = var.s3_artifacts_bucket
    key    = var.lambdas_brands_write_dynamodb_zip
  }

  layers = [
    var.datadog_layer_arn
  ]

  publish                                 = true
  create_package                          = false
  create_async_event_config               = true
  create_current_version_allowed_triggers = false

  attach_cloudwatch_logs_policy = true
  attach_policies               = true

  number_of_policies = 1

  policies = [
    "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  ]

  tracing_mode = var.lambdas_tracing_mode

  cloudwatch_logs_retention_in_days = 7

  environment_variables = var.brands-write-dynamodb_staging_env

  allowed_triggers = {
    Cloudwatch = {
      principal  = "events.amazonaws.com"
      source_arn = aws_cloudwatch_event_rule.scheduler_brands_write_dynamodb_mkp_instance.arn
    }
  }

  tags = merge(var.tags, {
    Name    = "brands-write-dynamodb-${var.name}"
    Service = "brands-pipeline"
    Version = var.lambdas_brands_write_dynamodb_version
    }, {
    git_commit           = "efd44fbedc9f2662ca45abacace1d08b52e2da0c"
    git_file             = "staging/ap-southeast-1/_brands_write_dynamodb_mkp_instance.tf"
    git_last_modified_at = "2022-08-24 02:31:05"
    git_last_modified_by = "mina.r@pomelofashion.com"
    git_modifiers        = "mina.r"
    git_org              = "pomelofashion"
    git_repo             = "infrastructure-lambda"
    yor_trace            = "eddbff19-6a5f-4992-afdf-c8820faf8f98"
  })

  providers = {
    aws = aws.staging
  }
}

resource "aws_cloudwatch_event_rule" "scheduler_brands_write_dynamodb_mkp_instance" {
  provider = aws.staging

  name                = "scheduler_brands_write_dynamodb_mkp_instance_${var.name}"
  description         = "Every Hours At Minute 0"
  schedule_expression = "cron(0 * * * ? *)"

  tags = merge(var.tags, {
    Name = "brands-write-dynamodb-staging-${var.name}"
    }, {
    git_commit           = "efd44fbedc9f2662ca45abacace1d08b52e2da0c"
    git_file             = "staging/ap-southeast-1/_brands_write_dynamodb_mkp_instance.tf"
    git_last_modified_at = "2022-08-24 02:31:05"
    git_last_modified_by = "mina.r@pomelofashion.com"
    git_modifiers        = "mina.r"
    git_org              = "pomelofashion"
    git_repo             = "infrastructure-lambda"
    yor_trace            = "efd95aef-1eb5-433b-a794-733389333b62"
  })
}

resource "aws_cloudwatch_event_target" "scheduler_brands_write_dynamodb_mkp_instance_staging" {
  provider = aws.staging

  rule = aws_cloudwatch_event_rule.scheduler_brands_write_dynamodb_mkp_instance.id
  arn  = module.brands_write_dynamodb_mkp_instance.lambda_function_arn
}
