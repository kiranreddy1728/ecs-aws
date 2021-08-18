# resource "aws_iam_policy" "example" {
#   # ... other configuration ...
#   policy = <<POLICY
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Action": [
#                 "ecr:CreateRepository",
#                 "ecr:ReplicateImage"
#             ],
#             "Resource": "*"
#         }
#     ]
# }
# POLICY
# }