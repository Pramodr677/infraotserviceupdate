resource "aws_vpc" "ot_vpc" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = false
  tags =  merge(
  var.my_tags,{
  Name = "${var.vpcname}"
  }
  )
  }

