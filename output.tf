# Valeurs de sortie à appliquer dans Ansible

output "elb-dns-name" {
  value = aws_elb.terra-elb.dns_name
}

output "rds-dns" {
  value = aws_db_instance.default.address
}

output "ec2-ip" {
  value = aws_instance.server1.public_ip
}