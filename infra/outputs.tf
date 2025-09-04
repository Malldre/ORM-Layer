output "drizzle_layer_arn" {
  description = "ARN of the Drizzle ORM Lambda Layer"
  value       = aws_lambda_layer_version.drizzle_orm.arn
}
