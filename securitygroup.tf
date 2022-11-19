resource "aws_security_group" "for_public" {
  name        = "otservice-sg-public"
  description = "sg for otservice public"
  vpc_id      = aws_vpc.ot_vpc.id
  dynamic "ingress" {
    for_each = [22, 80, 443]
    iterator = port
    content {
      description = "SG-fontend"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = merge(
 var.my_tags,{
    Name = "${var.publicsgname}"
  }
  )
}


resource "aws_security_group" "for_pvt" {
  name        = "pvt-sg-nodes"
  description = "sg for pvt"
  vpc_id      = aws_vpc.ot_vpc.id
  dynamic "ingress" {
    for_each = [8081,8080,8083,3000,22,9200,3306]
    iterator = port
    content {
      description = "SG-nodes-pvt"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      security_groups = [aws_security_group.for_public.id] 
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = merge(
 var.my_tags,{
    Name = "${var.pvtsgname}"
  }
  )
}
