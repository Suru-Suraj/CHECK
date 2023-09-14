resource "aws_key_pair" "capstone" {
  key_name   = "capstone"
  public_key = tls_private_key.CAPSTONE.public_key_openssh
}
resource "tls_private_key" "capstone" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "local_file" "capstone" {
  content  = tls_private_key.capstone.private_key_pem
  filename = "capstone.pem"
}
