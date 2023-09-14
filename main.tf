resource "aws_key_pair" "suraj" {
  key_name   = "suraj"
  public_key = tls_private_key.CAPSTONE.public_key_openssh
}
resource "tls_private_key" "CAPSTONE" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "local_file" "CAPSTONE" {
  content  = tls_private_key.CAPSTONE.private_key_pem
  filename = "capstone.pem"
}
