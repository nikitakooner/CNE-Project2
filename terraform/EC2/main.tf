
resource "aws_instance" "jenkins_VM" {
  ami                    = var.ubuntu_ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.demo_key.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.vpc_security_group_ids]

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "jenkins_VM"
    project = "CNE_Practical"
  }
}

resource "aws_key_pair" "demo_key" {
  key_name   = "demokeys"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXNO5WoE6eK7dOdAN6aqeX+kpNwemLy5AFijjCHyxgYpXSBWFXTaK1pExoI7Y8T3uzKtbhDjpbaNYKkLJiJpdymHfs2SnReTZdVWwL/o2iPhJ2vW7v8IB+iX/1C1Ii4ew/7gJVpUDF/CCus9jobb+1eG5oiy+KHOQCb06pHTMbXDUps/VzXer/gU5FsstATuqaT0ORFNThzja5Zs4jLyPQXCWRiLk8m8sjRVtDS6AFzfPdPXivEMt+xuHQKMt1K//NOWrpbJ6D42hGUkkWa1wKpBJxCsZoqYM8pxcdA7eBh/lQswWXThuNM6tixTz9Suee19UFeeNdF3wJzBUS4TU9 ubuntu@ip-172-31-40-117"
}

resource "aws_instance" "test_VM" {
  ami                    = var.ubuntu_ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.demo_key.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.vpc_security_group_ids]
  
lifecycle {
    create_before_destroy = true
  }

    tags = {
    Name = "test_VM"
    project = "CNE_Practical"
  }

}
