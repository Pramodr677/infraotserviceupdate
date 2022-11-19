resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ot_vpc.id
 tags =  merge(
  var.my_tags,{
  Name = "${var.igw_name}"
  }
  )
  }
