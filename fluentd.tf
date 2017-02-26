resource "aws_instance" "fluentd" {
  count = "${var.instance_count["fluentd"]}"
  ami = "${var.amis["fluentd"]}"
  instance_type = "${var.instance_type["fluentd"]}"
  subnet_id = "${aws_subnet.public.id}"
  vpc_security_group_ids = ["${aws_security_group.default.id}", "${aws_security_group.myaccess.id}"]
  key_name = "${aws_key_pair.terra.key_name}"
  source_dest_check = false
  user_data = "${file("config/fluentd.yml")}"
  depends_on = ["aws_key_pair.terra"]
  tags = { 
    Name = "fluentd-${count.index}"
  }
}
