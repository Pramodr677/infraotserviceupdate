resource "aws_route_table" "public" {
   vpc_id = aws_vpc.ot_vpc.id
   route {
     cidr_block = var.route_cidr
     gateway_id = aws_internet_gateway.igw.id
   }
   tags =  merge(
  var.my_tags,{
  Name = "${var.pubroutetable_name}"
  }
  )
  }

resource "aws_route_table" "private" {
   vpc_id = aws_vpc.ot_vpc.id
   route {
     cidr_block = var.route_cidr_pvt
     gateway_id = aws_nat_gateway.nat1.id
   }
   tags =  merge(
  var.my_tags,{
  Name = "${var.pvtroutetable_name}"
  }
  )
  }
