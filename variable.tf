variable "access_key" {
  description = "IAM Access Key"
  type        = string
}

variable "secret_key" {
  description = "IAM Secret Key"
  type        = string
}

variable "bucket_name" {
  description = "Name of the bucket that will create"
  type        = string
  default     = "technical-test-fedeagu"
}

variable "cluster_name" {
  description = "Name of the bucket that will create"
  type        = string
  default     = "technical-test"
}
