# Définition du service de base de données relationnelle RDS d'AWS

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  name                 = "wordpress"
  username             = "admin"
  password             = "wordpress"
  parameter_group_name = "default.mysql8.0"
  port                 = 3306
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.mysql-rds.id]
  db_subnet_group_name      = aws_db_subnet_group.default.id
}

resource "aws_db_subnet_group" "default" {
  name        = "subnet-group"
  description = "Terraform RDS subnet group"
  subnet_ids  = [aws_subnet.webservers-a.id, aws_subnet.webservers-b.id]
}

