output "state_s3_bucket" {
  value = "${aws_s3_bucket.state_bucket.id}"
}

output "terraform_lock_table" {
  value = "${aws_dynamodb_table.terraform_statelock.id}"
}
