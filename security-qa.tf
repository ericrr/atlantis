resource "aws_security_group" "sg-jumpbox-qa" {
  name        = "pes-qa-${var.servico}-${var.ambiente}"
  description = "sg-pes-qa-${var.servico}-${var.ambiente}"
  vpc_id      = data.aws_vpc.vpc_private.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    description = "Acesso SSH "
  }


  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    description = "Acesso SSH "
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    description = "Acesso SSH "
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

    tags = {
        Name =  "pes-qa-${var.servico}-${var.ambiente}"
        # Product = "${var.product}"
        # Environment = "${var.environment}"
        # Cost = "${var.customer}"
        # Customer = "${var.customer}"      
        Deploy = "${var.deploy}"
        # QAStop = "${var.qastop}"
    }

}


