resource "aws_key_pair" "key" {
  key_name = "aws-key-${var.environment}"
  public_key = file("./aws-key.pub")
}