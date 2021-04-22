resource "aws_s3_bucket" "slux_less7" {
  bucket = "less7"
  acl    = "private"

  tags = {
    Name        = "less7"
    Environment = "Dev"
  }
}