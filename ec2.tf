resource "aws_instance" "instance" {
  ami = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public-subnet.id}"
  key_name = "${var.keypair}" 
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]

  tags = {
    Name = "${var.IC_NAME}_instance"
  }
}
