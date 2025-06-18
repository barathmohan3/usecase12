resource "aws_instance" "this" {
  ami           = "ami-09e6f87a47903347c"  # Replace with appropriate AMI
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = var.name
  }
}
