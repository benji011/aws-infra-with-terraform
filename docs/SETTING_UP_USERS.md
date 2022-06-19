# Setting up users

Add user to `variables.tf` 

```hcl
variable "users" {
  type    = list(string)
  default = ["user1", "user2", "user3"]
}
```

Run `terraform plan` to check users to be added

```hcl
terraform plan
```

Apply changes if you're happy

```hcl
terraform apply
```

Next, open the account in the AWS console and select "Security Credentials". We want to give them programmatic access so select "Create access key" and then download the `.csv` file then give it to the requested user for them to set up their AWS cli tool. You can find out more on how to do this from [this doc](./SETTING_UP_AWS_CLI.md).