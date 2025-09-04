variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "layer_name" {
  description = "The name of the Lambda layer"
  type        = string
  default     = "ORM_Layer"
}

variable "layer_handler" {
  description = "The name of the Lambda layer handler"
  type        = string
  default     = "ORM_Layer.handler"
}

variable "layer_runtime" {
  description = "The runtime of the Lambda layer"
  type        = string
  default     = "nodejs22.x"
}