output "iam_user_name" {
  value = aws_iam_user.new_user.name
}

output "iam_role_name" {
  value = aws_iam_role.new_role.name
}