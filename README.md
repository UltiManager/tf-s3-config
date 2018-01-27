# Terraform S3 Config

Terraform module for configuring an S3 backend for Terraform.


## Overview

This module creates a versioned S3 bucket for storing Terraform state files, along with a DynamoDB table that enables Terraform to aquire a lock when running. After running the module, you can then use the S3 storage backend as follows:

```hcl
terraform {
  backend "s3" {
    bucket         = "<state bucket name>"
    dynamodb_table = "<lock table>"
    key            = "<project-name>"
    region         = "<bucket region>"
  }
}
```

**Note: `project-name` must be unique across all Terraform projects using the bucket**


## License

This project is licensed under the MIT License. See the [`License`](LICENSE) file for more information.


## Authors

Chathan Driehuys (chathan@driehuys.com)
