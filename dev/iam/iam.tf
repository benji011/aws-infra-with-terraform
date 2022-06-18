resource "aws_iam_user" "developer" {
  count = length(var.username)
  name  = element(var.username, count.index)
  path  = "/system/"
}

resource "aws_iam_access_key" "developer" {
  count = length(var.username)
  user  = element(var.username, count.index)
}