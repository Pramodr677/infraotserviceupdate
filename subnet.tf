resource "aws_subnet" "public_subnets" {
count = length(var.public_subnet_cidrs)
vpc_id = aws_vpc.ot_vpc.id
cidr_block = element(var.public_subnet_cidrs, count.index)
availability_zone = element(var.azs, count.index)
map_public_ip_on_launch = true
tags =  merge(
 var.my_tags,{
Name = "public_Subnet ${count.index + 1}"
}
)
}

resource "aws_subnet" "pvt_subnets" {
count = length(var.pvt_subnet_cidrs)
vpc_id = aws_vpc.ot_vpc.id
cidr_block = element(var.pvt_subnet_cidrs, count.index)
availability_zone = element(var.azs, count.index)
tags =  merge(
 var.my_tags,{
Name = "pvt_Subnet ${count.index + 1}"
}
)
}
