resource "aws_iam_user" "example" {
  name          = "kiran"
  path          = "/"
  force_destroy = true


}

# Attach custom or managed policies
resource "aws_iam_user_policy_attachment" "policy" {

  user       = aws_iam_user.example.name
  count      = length(var.iam_policy_arn)
  policy_arn = var.iam_policy_arn[count.index]

}

# Define policy ARNs as list
variable "iam_policy_arn" {
  description = "IAM Policy to be attached to role"
  type = list
  default = [ "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser", 
              "arn:aws:iam::aws:policy/AmazonS3FullAccess",
              "arn:aws:iam::aws:policy/ElasticLoadBalancingReadOnly",
              "arn:aws:iam::aws:policy/AmazonECS_FullAccess"]
}





# resource "aws_iam_access_key" "lb" {
#   user    = aws_iam_user.example.name
#   pgp_key = "keybase:test"
  
# }

# # ECS task execution role data
# data "aws_iam_policy_document" "ecs_task_execution_role" {
#   version = "2012-10-17"
#   statement {
#     sid = ""
#     effect = "Allow"
#     actions = ["sts:AssumeRole"]

#     principals {
#       type        = "Service"
#       identifiers = ["ecs-tasks.amazonaws.com"]
#     }
#   }
# }

# # ECS task execution role
# resource "aws_iam_role" "ecs_task_execution_role" {
#   name               = var.ecs_task_execution_role_name
#   assume_role_policy = data.aws_iam_policy_document.ecs_task_execution_role.json
# }

# # ECS task execution role policy attachment
# resource "aws_iam_role_policy_attachment" "ecs_task_execution_role" {
#   role       = aws_iam_role.ecs_task_execution_role.name
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
# }
