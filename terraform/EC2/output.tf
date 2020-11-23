
output "jenkins_IP" {
  value = aws_instance.jenkins_VM.public_ip
}

output "test_IP" {
  value = aws_instance.test_VM.public_ip
}
