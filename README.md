# Prompt Bug

The following demonstrates a bug in which user is prompted unnecessarily for an AWS region purportedly supplied by default value of a variable. This quick demo attempts to create a VPC tagged `promptbug-vpc` with a CIDR block of `10.0.0.0/16`.

Copy [modules/providers/aws/variables.tf.template]() to `modules/providers/aws/variables.tf` and configure the `default` value for the `profile` variable.

# Expected result
