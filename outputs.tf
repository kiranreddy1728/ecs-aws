output "key_arn" {
  value       = join("", aws_kms_key.this.*.arn)
  description = "Key ARN"
}

output "ecs_repository_name" {
  value       = join("", aws_ecr_repository.create.*.name)
  description = "Name of first repository created"
}