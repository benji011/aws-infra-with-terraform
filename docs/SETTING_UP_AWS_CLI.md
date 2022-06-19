# Setting up AWS CLI

```bash
$ aws configure --profile yourname

AWS Accrss Key ID [None]: Your access key
AWS Secret Access Key [None]: Your secret access key
Default region name [None]: eu-west-2
Default output format [None]: json
```

If the above is performed correctly your local config file will be stored in `~/.aws/config` and your credentials in `~/.aws/credentials`. For reference, check the profile name to make sure they are configured properly:

```bash
$ cat ~/.aws/credentials
[myprofile]
aws_access_key_id = XXXXXXXXXXXXXXXX
aws_secret_access_key = XXXXXXXXXXXXXXXX
```

Export the profile to your provider

```bash
export AWS_PROFILE=myprofile
```
