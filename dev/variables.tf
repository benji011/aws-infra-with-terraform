variable "username" {
  type    = list(string)
  default = ["suga", "kishida"]
}

variable "region" {
  description = "AWS Region name"
  type        = string
  default     = "eu-west-2"
}