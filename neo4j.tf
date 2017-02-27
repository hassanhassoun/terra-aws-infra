resource "aws_instance" "neo4j" {
  count = "${var.instance_count["neo4j"]}"
  ami = "${var.amis["neo4j"]}"
  instance_type = "${var.instance_type["neo4j"]}"
  subnet_id = "${aws_subnet.public.id}"
  vpc_security_group_ids = ["${aws_security_group.default.id}", "${aws_security_group.myaccess.id}"]
  key_name = "${aws_key_pair.terra.key_name}"
  source_dest_check = false
  user_data = "${file("config/neo4j.yml")}"
  depends_on = ["aws_key_pair.terra"]
  tags = { 
    Name = "neo4j-${count.index}"
  }
}
