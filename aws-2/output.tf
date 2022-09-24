output "instance_ip" {
  value = aws_instance.test-ec2.*.public_ip
}
