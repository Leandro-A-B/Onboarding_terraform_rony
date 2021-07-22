variable "aws_region" {
  description = "Definição da região"
  default = "us-east-1"
}

variable "base_bucket_name" {
  description = "Nome do bucket"
  default = "my-bucket"
}

variable "account" {
  description = "Número da conta para execução"
  default = 127012818163
}

variable "lambda_function_name" {
  description = "Nome da Lambda Function"
  default = "my-lambda"
}
