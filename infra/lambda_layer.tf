resource "aws_lambda_layer_version" "drizzle_orm" {
  filename            = "${path.module}/../orm-layer/drizzle-layer.zip"
  layer_name          = var.layer_name
  compatible_runtimes = [var.layer_runtime]
  description = "Lambda Layer with ORM + schema"

  source_code_hash = filebase64sha256("${path.module}/../orm-layer/drizzle-layer.zip")
}
