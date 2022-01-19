resource "aws_elasticsearch_domain" "projet10" {
  domain_name           = "projet10"
  elasticsearch_version = "OpenSearch_1.0"
  
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

  
  access_policies = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "es:*"
        ]
        Principal = {
          AWS = "*"
        }
        Effect    = "Allow"
        Resource  = "*"
      },
    ]
  })
}



