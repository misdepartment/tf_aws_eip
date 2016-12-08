# See https://www.terraform.io/docs/providers/aws/r/eip.html
resource "aws_eip" "default" {
  vpc = true

  instance = "${var.instance_id}"
}
