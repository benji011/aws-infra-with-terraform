resource "aws_iam_user" "developer" {
  count = length(var.users)
  name  = element(var.users, count.index)
  path  = "/system/"
}

resource "aws_iam_access_key" "developer" {
  count = length(var.users)
  user  = element(var.users, count.index)
}