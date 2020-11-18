####################### SELECIONAR WORKSPACE #######################
# $ terraform plan -var-file=prod.tfvars                           #
# $ terraform plan -var-file=qa.tfvars                             #
#                                                                  #
# $ terraform apply -var-file=prod.tfvars                          #
# $ terraform apply -var-file=qa.tfvars                            #
#################################################################### 

aws-credentials-profile = "default"
aws-region              = "us-east-2"
availability_zone       = ["us-east-2a"]
key_name                = "robertoeric10"

ami                   = "ami-0dd9f0e7df0f0a138"
instance_type         = "t2.micro"
instance_count        = 2
# disk_size_root_device = 8
# assign_eip_address    = true
# ebs_volume_enabled    = false
# ebs_volume_count      = 3
# ebs_volume_type       = "io1"
# ebs_volume_size       = 50
# ebs_iops              = 150

vpc_id        = "vpc-0a580bc36254a03b5"
subnet_ids    = ["subnet-0c01bf454b984a214"]

vpc_name    = "default"
subnets_private_name = "public"


# Tags utilizadas pelo cliente
ambiente = "dev"
marca    = "pes"
produto  = "std"
projeto  = "std"
servico  = "jumpbox"
deploy   = "terraform"

assign_eip_address = true
