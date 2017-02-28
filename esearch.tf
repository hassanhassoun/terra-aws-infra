resource "aws_elasticsearch_domain" "domain" {
  domain_name = "${var.app_name}"
  elasticsearch_version = "5.1"
  access_policies = <<CONFIG
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Condition": {
                "IpAddress": {"aws:SourceIp": ["${var.myip}/32"]}
            }
        }
    ]
}
CONFIG
}
