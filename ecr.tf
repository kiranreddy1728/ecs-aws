resource "aws_ecr_repository" "create" {
  depends_on = [aws_kms_key.this]

  name                 = "kiran"
  image_tag_mutability = "MUTABLE"
  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = aws_kms_key.this.arn 
  }
  image_scanning_configuration {
    scan_on_push = true
  }
}
