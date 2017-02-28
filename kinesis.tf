resource "aws_kinesis_stream" "stream" {
    name = "kinesis-${var.app_name}-${var.client_name}-${var.project_name}"
    shard_count = 1
    retention_period = 48
    shard_level_metrics = [
        "IncomingBytes",
        "OutgoingBytes"
    ]
    tags {
        Environment = "PROD"
    }
}

resource "aws_kinesis_firehose_delivery_stream" "delivery" {
  name = "s3-delivery-${var.app_name}-${var.client_name}-${var.project_name}"
  destination = "s3"
  s3_configuration {
    role_arn = "${aws_iam_role.firehose_role.arn}"
    bucket_arn = "${aws_s3_bucket.firstbucket.arn}"
  }

  elasticsearch_configuration {
    domain_arn = "${aws_elasticsearch_domain.domain.arn}"
    role_arn = "${aws_iam_role.firehose_role.arn}"
    index_name = "test"
    type_name = "test"
  }
}
