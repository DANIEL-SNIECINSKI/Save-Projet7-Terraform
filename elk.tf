variable "master_user_password" {
  type    = string
}

resource "aws_security_group" "opensearch_sg" {
  name        = "opensearch_sg"
  description = "Allow access to Elasticsearch"
 
  ingress {
    description = "Allow All"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_elasticsearch_domain" "opensearch" {
  domain_name           = "opensearch"
  elasticsearch_version = "OpenSearch_1.1"
#  elasticsearch_version = "7.10" 

  cluster_config {
    dedicated_master_enabled = false

    instance_type = "t3.small.elasticsearch"
    instance_count = 1

    warm_enabled = false
  }

  domain_endpoint_options {
    enforce_https = true
    tls_security_policy = "Policy-Min-TLS-1-2-2019-07"
  }

  node_to_node_encryption {
    enabled = true
  }

  encrypt_at_rest {
    enabled = true
  }

  ebs_options {
    ebs_enabled = true
    volume_type = "gp2"
    volume_size = 20
  }

# Authentication
  advanced_security_options {
    enabled                        = true
    internal_user_database_enabled = true
    master_user_options {
      master_user_name     = "es-admin"
      master_user_password = var.master_user_password
    }
  }
}

resource "aws_elasticsearch_domain_policy" "main" {
  domain_name     = aws_elasticsearch_domain.opensearch.domain_name
  access_policies = <<POLICIES
  {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "es:*",
      "Resource": "${aws_elasticsearch_domain.opensearch.arn}/*"
    }
  ]
}
POLICIES
} 

