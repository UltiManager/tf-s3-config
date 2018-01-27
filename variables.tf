variable "aws_region" {
  type = "string"
  description = "The region to create the Terraform infrastructure in."
}

variable "base_tags" {
  default = {
    Application = "Terraform"
  }
  description = "A base set of tags to apply to the created resources."
  type = "map"
}

variable "lock_table" {
  type = "string"
  description = "Name of the DynamoDB table used to aquire a lock for running Terraform code."
  default = "terraform-lock"
}

variable "old_version_expiration" {
  type = "string"
  description = "The number of days that old state files will be kept for."
  default = "30"
}

variable "state_bucket" {
  type = "string"
  description = "The name of the bucket to store Terraform state files in."
}

