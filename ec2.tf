# Description de l'instance

resource "aws_key_pair" "key-ssh" {
  key_name   = "key-ssh"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCnZfG2IpNH8ewgJQ+XUKR21p8QgBjwYftY8rvNhQm4nRSgplFqQXTile17Or5hkYSJ6LXVS95EJ44jYs4XCh9haIgLPK9JHMLlL1YqrOR4fRLoG6Vxlz/2+m6NjGVLySIPmROB6I9Sx8Ur45WXPpcLRgk5gODXCVM4+61t8YT+uQ0nINOHdnKLMyJzSkUKdAeqwD8frXJwsCvfjgQklJWFoWs1khBEM96AP0N0S/THjSkqwAbUyUCruCTKEf4SiSuspn2AURyjml7U/i8FIK/2cxlo378v7ej5VtvZ6cIYxg1S+jaFrZbh+3OSdGL38DKTTQpFrI9CGvh5UTGGGnhDtNCIbL5eQr7WpLYAPPgRLH5Gn12SVosgstHZLSX78BOAs91H2wt37gwBEDdOHkuSMEIRPcsjbZi6u0OKue2aEE3qecJu85m7A/f6i1ps8GnZRXqYkwZumTD1Ul0bzVIMXiJZix7NyhkIMwvAH5oBCIGFnUqn3fG+FVzwz2ZEHkc= root@daniel-BEN17C8SR1T"
}
resource "aws_instance" "server1" {
  ami           = "ami-045fa58af83eb0ff4"
  instance_type = "t3.micro"
  key_name      = "key-ssh"
  security_groups = [aws_security_group.webservers.id]
  subnet_id = aws_subnet.webservers-a.id

  lifecycle {
    ignore_changes = [security_groups, subnet_id]
  }
  tags = {
    Name = "Projet7"
  }
}