# AWS + Terraform

A bunch of AWS apps using Terraform.

# Setup

## Install Homebrew

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ brew -v
# Homebrew 3.5.2
# Homebrew/homebrew-core (git revision 8cf67a9bf32; last commit 2022-06-18)
# Homebrew/homebrew-cask (git revision e83c83c0a2; last commit 2022-06-18)
```

## Install tfenv (a package manager for Terraform)

```bash
$ brew install tfenv
$ tfenv -v
# output: tfenv 2.2.3
```

At the time of writing this doc I am using `1.0.6`. Install, this version, tell tfenv to use it then check if it has switched versions correctly.

```bash
$ tfenv install 1.0.6 && tfenv use 1.0.6
$ terraform -v
# output: Terraform v1.0.6
```

## Install `aws-cli`

```bash
brew install awscli
aws --version

# output: aws-cli/2.7.7 Python/3.9.13 Darwin/20.6.0 source/x86_64 prompt/off
```

## Setup your AWS profile

If you are starting out as the admin, then first you must have an AWS account created from the console. Refer to this [doc on how to do this](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html). Then download `.csv` file that contains your user credentials which we need to tell AWS how we can access our resources via the cli.

When the time comes to attach policies you and other users in the team can send pull requests and attach them to specific groups (e.g. `developers`) instead of their account directly on the console. This ensures all your users are assigned equal roles and they aren't doing anything they aren't shouldn't be.

Typically, the root user/admins should do this and then send them the credentials. Afterwards only they should know their details and must configure them locally. You can read more about how to do this in [this doc](docs/SETTING_UP_AWS_CLI.md).



## TODO: Formatting

Probably because of `tfenv` autoformatting doesn't work on save so for now I'm using the below command to format everything. Can be set as a precommit.

```bash
$ terraform fmt
```

## Further reading

https://registry.terraform.io/providers/hashicorp/aws/latest/docs