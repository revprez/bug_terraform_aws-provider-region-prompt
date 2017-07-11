# Prompt Bug

The following demonstrates a bug in which user is prompted unnecessarily for an AWS region purportedly supplied by default value of a variable. This quick demo attempts to create a VPC tagged `promptbug-vpc` with a CIDR block of `10.0.0.0/16`.

Copy [modules/providers/aws/variables.tf.template](https://github.com/revprez/bug_terraform_aws-provider-region-prompt/blob/master/modules/providers/aws/variables.tf.template) to `modules/providers/aws/variables.tf` and configure the `default` value for the `profile` variable.

# Expected result

VPC is created without incident or prompt.

# Actual result

User is prompted immediately to supply value for `provider.aws.region`:

```
$ terraform plan
provider.aws.region
  The region where AWS operations will take place. Examples
  are us-east-1, us-west-2, etc.

  Default: us-east-1
  Enter a value: ^C
```
