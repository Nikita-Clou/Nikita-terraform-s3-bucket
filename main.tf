resource "aws_s3_bucket" "terraform-bucket" {
    bucket = "Nikita-terraform-tfstatefile-bucket"
    tags = {
        Name = "my first bucket"
        Env = "Dev"
        Owner = "Nikita"
    }
  
}

resource "aws_s3_bucket_versioning" "my-bucket-versioning" {
  bucket = aws_s3_bucket.terraform-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
