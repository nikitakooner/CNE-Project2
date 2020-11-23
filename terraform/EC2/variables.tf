
variable "ubuntu_ami" {
  default = "ami-0b85dae948397feb4"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {
  default = "null"
}

variable "vpc_security_group_ids" {
  default = "null"
}
