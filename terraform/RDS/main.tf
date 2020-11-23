
resource "aws_db_instance" "prod" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "prod_db"
  username             = "admin"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = [var.vpc_security_group_ids]
  skip_final_snapshot = true
  identifier = "cne-project-prod"

  tags = {
    project = "CNE_Practical"
  }
}

resource "aws_db_instance" "test" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "test_db"
  username             = "admin"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = [var.vpc_security_group_ids]
  skip_final_snapshot = true
  identifier = "cne-project-test"

  tags = {
    project = "CNE_Practical"
  }
}

resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [var.subnetA_id, var.subnetB_id]

  tags = {
    project = "CNE_Practical"
  }
}
