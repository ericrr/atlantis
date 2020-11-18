
data "aws_vpc" "vpc_private" {
  filter {
    name   = "tag:Name"
    values = ["${var.vpc_name}"]
  }
}

data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.vpc_private.id
  filter {
    name = "tag:Name"
    values = ["${var.subnets_private_name}"]
  }
}
