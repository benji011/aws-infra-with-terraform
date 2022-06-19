variable "users" {
  type    = list(string)
  default = ["benny", "suga", "kishida"]
}

variable "region" {
  description = "AWS Region name"
  type        = string
  default     = "eu-west-2"
}