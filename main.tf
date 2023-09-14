resource "aws_key_pair" "suraj" {
  key_name   = "deployer-key"
  public_key = file("suraj.pem")
}
