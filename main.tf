provider "aws" {
  region                  = var.aws-region
  # shared_credentials_file = "$HOME/.aws/credentials"
  # profile                 = var.aws-credentials-profile
}

terraform {
  backend "s3" {
    bucket = "tf-aws-atlantis"
    key    = "jumpbox/jumpbox.tfstate"
    region = "us-east-2"
  } 
}

resource "aws_instance" "jumpbox" {
    count = var.instance_count
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.keyname
    vpc_security_group_ids = [ aws_security_group.sg-jumpbox-qa.id ]
    subnet_id = "${element(tolist(data.aws_subnet_ids.private.ids), count.index)}"
#    availability_zone = "${element(var.azs, count.index)}"

#   tags = merge(
#     module.labels.tags,
#     {
#         Name = "${lower(var.customer)}-${trimprefix(element(var.azs, count.index), "${var.rm_region}")}-${var.environment}-${var.product}-client${format("%02d", count.index + 1)}"
#     }
#   )
    tags = {
        Name = "${lower(var.marca)}-${var.produto}-${var.produto}-client${format("%02d", count.index + 1)}"
#        Name = "${lower(var.customer)}-${trimprefix(element(var.azs, count.index), "${var.rm_region}")}-${var.environment}-${var.product}-client${format("%02d", count.index + 1)}"        
        # Product = "${var.product}"
        # Environment = "${var.environment}"
        # Cost = "${var.customer}"
        # Customer = "${var.customer}"      
        Deploy = "${var.deploy}"
#        QAStop = "${var.qastop}"
    }

}

