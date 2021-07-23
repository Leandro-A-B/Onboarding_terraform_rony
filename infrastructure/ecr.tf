resource "aws_ecr_repository" "repo" {
  name                 = "etl-job-leandro-bueno"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}