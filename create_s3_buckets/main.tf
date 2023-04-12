# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region  = "us-east-2"
  profile = "source"

  assume_role {
    role_arn = "arn:aws:iam::708774933442:role/assume_role"
  }
}


resource "aws_s3_bucket" "example" {
  count = 4
  bucket = "nisum-test-bucket-${count.index}"
}

