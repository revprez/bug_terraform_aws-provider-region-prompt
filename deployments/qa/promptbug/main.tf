resource "aws_vpc" "promptbug-vpc" {
  cidr_block       = "10.0.0.0/16"

  tags {
    Name = "promptbug-vpc"
  }
}
