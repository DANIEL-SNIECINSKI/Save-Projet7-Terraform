resource "aws_elasticsearch_domain" "projet10" {
    domain_name           = "projet10"
    elasticsearch_version = "7.10"
  
    cluster_config {
      instance_type = "t3.small.elasticsearch"
    }
    ebs_options {
        ebs_enabled = true
        volume_size = 10
        volume_type = "gp2"
      }
#########################################
access_policies = <<CONFIG
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Resource": "arn:aws:es:eu-west-3:733179081070:domain/projet10/*"
        }
    ]
  }
CONFIG

################################################


    tags = {
      Domain = "projet10"
    }
}