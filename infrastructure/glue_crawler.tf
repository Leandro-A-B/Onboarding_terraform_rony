resource "aws_glue_catalog_database" "raw" {
  name = " onboarding-a3-leandro-bueno"  
}

resource "aws_glue_crawler" "rawleandrobueno" {
  database_name = aws_glue_catalog_database.raw.name
  name          = "dl_raw_crawlerleandrobueno"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.dl.bucket}/${var.path_bucket_name}"
  }

  tags = {
    key =  "Ambiente"
    value = "Dev"    
  }
}