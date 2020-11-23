
output "jenkins_IP" {
  value = module.ec2_instances.jenkins_IP
}

output "test_IP" {
  value = module.ec2_instances.test_IP
}

output "test_endpoint" {
  value = module.RDS_instances.test_RDS_Endpoint
}

output "prod_endpoint" {
  value = module.RDS_instances.prod_RDS_Endpoint
}
