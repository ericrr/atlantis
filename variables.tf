variable "name" {
  type    = string
  default = ""
}

variable "aws-region" {
  type    = string
  default = "us-east-2"
}

variable "allowed_ip" {
  type    = list
  default = []
}

variable "allowed_ports" {
  type    = list
  default = []
}

variable "aws-credentials-profile" {
  type    = string
  default = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "delimiter" {
  type    = string
  default = "-"
}

# variable "application" {
#   type = string
# }

# variable "environment" {
#   type = string
# }

variable "createdby" {
  type    = string
  default = "terraform"
}

variable "cost" {
  type    = string
  default = ""
}

variable "zone_split" {
  type    = list
  default = ["1a", "1b", "1c"]
}

variable "label_order" {
  type    = list
  default = []
}

variable "ami" {
  type = string
  default = "ami-0dd9f0e7df0f0a138"
}

variable "instance_type" {
  type = string
  default = "1"
}

variable "keyname" {
  type    = string
  default = "robertoeric10"
}


variable "subnet" {
  type    = string
  default = null
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "vpc_name" {
  type    = string
  default = "default"
}

variable "associate_public_ip_address" {
  type    = bool
  default = true
}

variable "user_data" {
  type    = string
  default = ""
}

# variable "availability_zone" {
#   type = list(string)
# }

variable "ebs_device_name" {
  type    = list(string)
  default = ["/dev/xvdb", "/dev/xvdc", "/dev/xvdd", "/dev/xvde", "/dev/xvdf", "/dev/xvdg", "/dev/xvdh", "/dev/xvdi", "/dev/xvdj", "/dev/xvdk", "/dev/xvdl", "/dev/xvdm", "/dev/xvdn", "/dev/xvdo", "/dev/xvdp", "/dev/xvdq", "/dev/xvdr", "/dev/xvds", "/dev/xvdt", "/dev/xvdu", "/dev/xvdv", "/dev/xvdw", "/dev/xvdx", "/dev/xvdy", "/dev/xvdz"]
}

variable "ebs_volume_size" {
  type    = number
  default = 30
}

variable "ebs_volume_type" {
  type    = string
  default = "gp2"
}

variable "instance_enabled" {
  type    = bool
  default = true
}

variable "ebs_volume_enabled" {
  type    = bool
  default = false
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "iam_instance_profile" {
  type    = string
  default = ""
}

variable "qastop" {
  type    = string
  default = ""
}

variable "cpu_credits" {
  type    = string
  default = "standard"
}

variable "netclaro" {
  type    = string
  default = "10.66.67.0/24"
}

variable "projeto" {
  type    = string
  default = "student"
}

variable "produto" {
  type    = string
  default = "hml"
}

variable "marca" {
  type    = string
  default = "std"
}

variable "ambiente" {
  type    = string
  default = "dev"
}

variable "servico" {
  type    = string
  default = "std"
}

variable "deploy" {
  type    = string
  default = "terraform"
}

variable "subnets_private_name" {
  type    = string
  default = "public"
}