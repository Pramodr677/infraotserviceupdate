resource "aws_eip" "nat1" {
  vpc = true
 }

resource "aws_nat_gateway" "nat1" {
  allocation_id     = aws_eip.nat1.id
  subnet_id         = aws_subnet.public_subnets[0].id
  connectivity_type = "public"

tags =  merge(
  var.my_tags,{
  Name = "${var.ngw_name}"
  }
  )
  }
