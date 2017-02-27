resource "aws_s3_bucket" "firstbucket" {
    bucket = "${var.app_name}-${var.client_name}-${var.project_name}"
    acl = "private"
    tags {
        Name = "${var.app_name}-${var.client_name}-${var.project_name}"
    }
}
