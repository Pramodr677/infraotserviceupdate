variable "vpcname" {
  type = string
}

variable "my_tags" {
  default     = {}
  description = "Ot micro-service app"
  type        = map(string)
}

variable "cidr_block_vpc" {
  type = string
}
variable "publicsgname" {
  type = string 
}
variable "pvtsgname" {
  type = string
}
variable "pubroutetable_name" {
  type = string
}
variable "pvtroutetable_name" {
  type = string
}
variable "ngw_name" {
  type = string
}
variable "igw_name" {
  type = string
}
variable "public_subnet_cidrs" {
type = any
}
variable "pvt_subnet_cidrs" {
type = any
}
variable "azs" {
type = any
}
variable "route_cidr" {
type = any
}

variable "route_cidr_pvt" {
type = any
}

variable "key_name" {
  type = string
}

variable "ami" {
  type = string
}
variable "instance_type" {
    type = string
}
variable "pvtinstancename" {
  type = any
}

variable "pubinstancename" {
  type = any
}