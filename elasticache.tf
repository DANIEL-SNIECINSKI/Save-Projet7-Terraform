# Accélération des performances wordpress

resource "aws_elasticache_cluster" "memcached" {
  lifecycle {
  create_before_destroy = true
  }

  cluster_id             = "cluster-example"
  engine                 = "memcached"
  node_type              = "cache.t3.micro"
  num_cache_nodes        = "1"
  port                   = "11211"
  }