resource "aws_elasticsearch_domain" "projet10" {
    domain_name           = "projet10"
    elasticsearch_version = "7.10"
  
    cluster_config {
      instance_type = "r4.large.elasticsearch"
    }
  
    tags = {
      Domain = "projet10"
    }
  }