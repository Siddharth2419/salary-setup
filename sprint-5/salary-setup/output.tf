output "vpc_id" {
  value = aws_vpc.dev_vpc.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gateway.id
}

output "public_rt_ids" {
  value = aws_route_table.public_rt[*].id
}

output "private_rt_ids" {
  value = aws_route_table.private_rt[*].id
}

output "public_nacl_id" {
  value = aws_network_acl.public_nacl.id
}

output "frontend_nacl_id" {
  value = aws_network_acl.frontend_nacl.id
}

output "application_nacl_id" {
  value = aws_network_acl.application_nacl.id
}

output "database_nacl_id" {
  value = aws_network_acl.database_nacl.id
}

output "alb_security_group_ids" {
  value = aws_security_group.alb_security_group[*].id
}

output "alb_ids" {
  value = aws_lb.test[*].id
}
