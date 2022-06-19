resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = 8
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = false
  allow_users_to_change_password = true
}

resource "aws_iam_group_policy" "developer_policy" {
  count  = length(var.users)
  name   = "developers"
  group  = aws_iam_group.developers.name
  policy = file("aws_iam_group_policy/developer.json")
}

