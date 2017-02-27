resource "aws_elastic_beanstalk_application" "appname" {
  name = "${var.app_name}"
  description = "${var.app_name}"
}

resource "aws_elastic_beanstalk_environment" "ebean" {
  name = "${var.app_name}"
  application = "${aws_elastic_beanstalk_application.appname.name}"
  solution_stack_name = "64bit Amazon Linux 2016.09 v2.3.1 running PHP 7.0"
  setting {
    namespace = "aws:ec2:vpc"
    name = "VPCId"
    value = "${aws_vpc.default.id}"
  }
  setting {
    namespace = "aws:ec2:vpc"
    name = "AssociatePublicIpAddress"
    value = "true"
  }
  setting {
    namespace = "aws:ec2:vpc"
    name = "Subnets"
    value = "${aws_subnet.public.id}"
  }
}
