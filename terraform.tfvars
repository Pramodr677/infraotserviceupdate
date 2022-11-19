vpcname = "ot-vpc"
publicsgname = "publicsg"
pvtsgname = "pvtsg"
pubroutetable_name = "pubroute"
pvtroutetable_name = "pvtroute"
ngw_name = "ngw"
igw_name = "igw"
cidr_block_vpc = "10.0.0.0/20"
my_tags = {
     Environment = "Prod"
     Owner       = "pramod"
     Team        = "DevOps"
}

public_subnet_cidrs = ["10.0.0.0/23","10.0.2.0/23" ]
pvt_subnet_cidrs = ["10.0.4.0/23","10.0.6.0/23", "10.0.8.0/23","10.0.10.0/23"]
azs = [ "ap-south-1a","ap-south-1b" ] 
route_cidr = "0.0.0.0/0"
route_cidr_pvt = "0.0.0.0/0"
ami = "ami-062df10d14676e201"
instance_type = "t2.medium"
key_name = "mumbai"

pvtinstancename = ["frontend1","frontend2","employee1","employee2","salary1","salary2","attendance1","attendance2","elastic","elastic2","mysql1","mysql2"]
pubinstancename = ["public1","public2"]
