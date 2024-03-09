output "vpc_id" {
  description = "Output the ID for the primary VPC"
  value       = aws_vpc.vpc.id
}

output "vpc_information" {
  description = "VPC Information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has an ID of ${aws_vpc.vpc.id}"
}

output "public_url" {
  description = "Public URL for our Nomad/Consul Cluster"
  value       = "http://${aws_instance.nomad_consul_server.public_ip}:4646/ui"
}