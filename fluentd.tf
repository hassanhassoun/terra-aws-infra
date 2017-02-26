resource "aws_instance" "fluentd" {
  count = "${lookup(var.instance_count, "fluentd")}"
  ami = "${lookup(var.amis, "fluentd")}"
  instance_type = "${lookup(var.instance_type, "fluentd")}"
  subnet_id = "${aws_subnet.private.id}"
  security_groups = ["${aws_security_group.default.id}"]
  key_name = "${var.keypair}"
  source_dest_check = false
  user_data = "${file(\"config/fluentd.yml\")}"
  tags = { 
    Name = "fluentd-${count.index}"
  }
}
