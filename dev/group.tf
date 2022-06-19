resource "aws_iam_group_membership" "developers" {
  name  = "developers_group_membership"
  users = var.users
  group = aws_iam_group.developers.name
}

resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/users/"
}