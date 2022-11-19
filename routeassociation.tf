resource "aws_route_table_association" "pub" {
  count = length(aws_subnet.public_subnets.*.id) 
  subnet_id  = tolist(aws_subnet.public_subnets.*.id)[count.index]
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "pvt" {
  count = length(aws_subnet.pvt_subnets.*.id) 
  subnet_id    = tolist(aws_subnet.pvt_subnets.*.id)[count.index]
  route_table_id = aws_route_table.private.id
}
