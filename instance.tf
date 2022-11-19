resource "aws_instance" "public_instance" {
 ami                    = var.ami
 instance_type          = var.instance_type
 count = "${length(var.pubinstancename)}" 
 associate_public_ip_address = true
 #count = length(aws_subnet.public_subnets.*.id) 
# subnet_id              = tolist(aws_subnet.public_subnets.*.id)[count.index]
 subnet_id              ="${element(aws_subnet.public_subnets.*.id,count.index)}"
 key_name              = var.key_name
 vpc_security_group_ids = [aws_security_group.for_public.id]  
 availability_zone = element(var.azs, count.index)
 tags = merge(
 var.my_tags,{
Name = element(var.pubinstancename, count.index)
}
 )
}

resource "aws_instance" "private_instance" {
 ami                    = var.ami
 instance_type          = var.instance_type
 count = "${length(var.pvtinstancename)}" 
 #subnet_id              = tolist(aws_subnet.pvt_subnets.*.id)[count.index]
 subnet_id              ="${element(aws_subnet.pvt_subnets.*.id,count.index)}"
 key_name              = var.key_name
 vpc_security_group_ids = [aws_security_group.for_pvt.id]  
 availability_zone = element(var.azs, count.index)
 tags = merge(
 var.my_tags,{
Name = element(var.pvtinstancename, count.index)
}
 )
}



# resource "aws_instance" "pvt_instance" {
#  ami                    = var.ami
#  instance_type          = var.instance_type
#  count = 5
#  subnet_id              = tolist(aws_subnet.pvt_subnets.*.id)[count.index]
#  key_name              = var.key_name
#  vpc_security_group_ids = [aws_security_group.for_pvt.id]  
#  availability_zone = element(var.azs, count.index)
# #  tags = merge(
# #  var.my_tags,{
# # Name = Privateinstance
# #  )
# }