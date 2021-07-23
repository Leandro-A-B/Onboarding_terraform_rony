resource "aws_glue_catalog_database" "raw" {
  name = " onboarding-a3-Leandro-Bueno"  
}

resource "aws_glue_crawler" "raw" {
  database_name = aws_glue_catalog_database.raw.name
  name          = "dl_raw_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.dl.bucket}/${var.path_bucket_name}"
  }

  tags = {
    key =  "Ambiente"
    value = "Dev"    
  }
}