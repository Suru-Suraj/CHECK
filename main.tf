resource "aws_key_pair" "suraj" {
  key_name   = "suraj"
  public_key = file("suraj.pem")
}
