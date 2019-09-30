resource "aws_s3_bucket" "test" {
  bucket = var.bucket_name
  acl    = "private"
}

resource "aws_s3_bucket_object" "test_files" {
  count   = 2
  bucket  = aws_s3_bucket.test.id
  key     = "test${count.index + 1}.txt"
  content = timestamp()
}
