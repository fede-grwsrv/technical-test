output "bucket_name" {
  value = aws_s3_bucket.test.id
}

output "files_names" {
  value = aws_s3_bucket_object.test_files[*].key
}

output "files_contents" {
  value = aws_s3_bucket_object.test_files[*].content
}
