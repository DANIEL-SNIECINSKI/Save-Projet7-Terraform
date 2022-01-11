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
    tags = {
      Domain = "projet10"
    }
}