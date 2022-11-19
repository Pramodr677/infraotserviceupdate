output "vpc_id" {
  value = aws_vpc.ot_vpc.id
}
output "igw_id" {
  value = aws_internet_gateway.igw.id
}
output "public_subnet_id" {
  value = "${formatlist("%v", aws_subnet.public_subnets.*.id)}"
}
output "pvt_subnet_id" {
  value = "${formatlist("%v", aws_subnet.pvt_subnets.*.id)}"
}

output "nat1_id" {
  value = aws_nat_gateway.nat1.id
}

output "route_id" {
  value = "${formatlist("%v", aws_route_table.private.*.id)}"
}
output "route_id_public" {
  value = aws_route_table.public.id
}
output "route_id_private" {
  value = aws_route_table.private.id
}
output "public_sg_id" {
  value = aws_security_group.for_public.id
}
output "pvt_sg_id" {
  value = aws_security_group.for_pvt.id
}
output "public_instance_id" {
  value = "${formatlist("%v", aws_instance.public_instance.*.id)}"
}
output "pvt_instance_id" {
  value = "${formatlist("%v", aws_instance.private_instance.*.id)}"
}














