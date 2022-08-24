# lambda functions
output "brands_write_dynamodb_name" {
  value = module.brands_write_dynamodb.lambda_function_name
}

output "brands_write_dynamodb_arn" {
  value = module.brands_write_dynamodb.lambda_function_arn
}