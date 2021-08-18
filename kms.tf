# Creates/manages KMS CMK
resource "aws_kms_key" "this" {
  description              = "kms key"
  deletion_window_in_days  = 30
}

#Add an alias to the key
resource "aws_kms_alias" "this" {
  name          = "alias/testecs"
  target_key_id = aws_kms_key.this.key_id
}