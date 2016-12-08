// Output the ip of the eip
output "public_ip" {
  value = "${aws_eip.default.public_ip}"
}
