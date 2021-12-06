resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_id}"
  subnet_id = "${var.subnet_id}"
  tags = {
    Name = "HelloWorld"
  }
}