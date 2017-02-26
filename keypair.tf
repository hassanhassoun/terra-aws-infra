resource "aws_key_pair" "terra" {
  key_name   = "terra-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
