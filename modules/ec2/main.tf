resource "aws_instance" "jumpbox" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  associate_public_ip_address = true
  key_name                    = var.key_name

  tags = {
    Name        = "${var.environment}-jumpbox"
    Environment = var.environment
  }
}
