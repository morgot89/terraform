resource "aws_route_table" "rtb-073277ff7ce6c033c" {
  vpc_id = aws_vpc.vpc-006a5df3c1fe74a41.id

  tags = {
    name = "job-vpc"
    Name = "project-rtb-private2-eu-west-1b"
  }
}

resource "aws_subnet" "subnet-07da3e8eccb3f49f0" {
  vpc_id                                         = aws_vpc.vpc-006a5df3c1fe74a41.id
  private_dns_hostname_type_on_launch            = "ip-name"
  map_public_ip_on_launch                        = false
  ipv6_native                                    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_dns64                                   = false
  cidr_block                                     = "10.0.3.0/24"
  availability_zone                              = var.availability_zone
  assign_ipv6_address_on_creation                = false

  tags = {
    name = "job-vpc"
    Name = "private-app-subnet-1-ireland-a"
  }
}

resource "aws_route_table" "rtb-01189934413da7ff3" {
  vpc_id = aws_vpc.vpc-006a5df3c1fe74a41.id

  tags = {
    name = "job-vpc"
    Name = "project-rtb-private4-eu-west-1b"
  }
}

resource "aws_route_table" "rtb-08cee185b4bf40fd3" {
  vpc_id = aws_vpc.vpc-006a5df3c1fe74a41.id

  tags = {
    name = "job-vpc"
    Name = "project-rtb-private1-eu-west-1a"
  }
}

resource "aws_subnet" "subnet-0cbf814182b370f0b" {
  vpc_id                                         = aws_vpc.vpc-006a5df3c1fe74a41.id
  private_dns_hostname_type_on_launch            = "ip-name"
  map_public_ip_on_launch                        = false
  ipv6_native                                    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_dns64                                   = false
  cidr_block                                     = "10.0.5.0/24"
  availability_zone                              = var.availability_zone
  assign_ipv6_address_on_creation                = false

  tags = {
    name = "job-vpc"
    Name = "db-subnet-1-ireland-a"
  }
}

resource "aws_subnet" "subnet-0c07e9f633b7ad321" {
  vpc_id                                         = aws_vpc.vpc-006a5df3c1fe74a41.id
  private_dns_hostname_type_on_launch            = "ip-name"
  map_public_ip_on_launch                        = false
  ipv6_native                                    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_dns64                                   = false
  cidr_block                                     = "10.0.1.0/24"
  availability_zone                              = var.availability_zone
  assign_ipv6_address_on_creation                = false

  tags = {
    name = "job-vpc"
    Name = "public-subnet-1-ireland-a"
  }
}

resource "aws_subnet" "subnet-0e5a6796900d224f5" {
  vpc_id                                         = aws_vpc.vpc-006a5df3c1fe74a41.id
  private_dns_hostname_type_on_launch            = "ip-name"
  map_public_ip_on_launch                        = false
  ipv6_native                                    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_dns64                                   = false
  cidr_block                                     = "10.0.4.0/24"
  availability_zone                              = var.availability_zone_eu-west-1b
  assign_ipv6_address_on_creation                = false

  tags = {
    name = "job-vpc"
    Name = "private-app-subnet-1-ireland-b"
  }
}

resource "aws_subnet" "subnet-0ea9030fbd378293c" {
  vpc_id                                         = aws_vpc.vpc-006a5df3c1fe74a41.id
  private_dns_hostname_type_on_launch            = "ip-name"
  map_public_ip_on_launch                        = false
  ipv6_native                                    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_dns64                                   = false
  cidr_block                                     = "10.0.2.0/24"
  availability_zone                              = var.availability_zone_eu-west-1b
  assign_ipv6_address_on_creation                = false

  tags = {
    name = "job-vpc"
    Name = "public-subnet-2-ireland-b"
  }
}

resource "aws_route_table" "rtb-0246fc2fff0813c8d" {
  vpc_id = aws_vpc.vpc-006a5df3c1fe74a41.id

  route {
    gateway_id = aws_internet_gateway.igw-04f7555cdefd7d61d.id
    cidr_block = "0.0.0.0/0"
  }

  tags = {
    name = "job-vpc"
    Name = "project-rtb-public"
  }
}

resource "aws_route_table" "rtb-0d940ea4b95a9694b" {
  vpc_id = aws_vpc.vpc-006a5df3c1fe74a41.id

  route {
    nat_gateway_id = "nat-0ac2b409a37ed9b99"
    cidr_block     = "0.0.0.0/0"
  }

  tags = {
    name = "job-vpc"
    Name = "project-rtb-private3-eu-west-1a"
  }
}

resource "aws_route_table_association" "subnet-0e5a6796900d224f5-rtb-0d940ea4b95a9694b" {
  subnet_id      = aws_subnet.subnet-0e5a6796900d224f5.id
  route_table_id = aws_route_table.rtb-0d940ea4b95a9694b.id
}

resource "aws_subnet" "subnet-0c57cb6149aa178b0" {
  vpc_id                                         = aws_vpc.vpc-006a5df3c1fe74a41.id
  private_dns_hostname_type_on_launch            = "ip-name"
  map_public_ip_on_launch                        = false
  ipv6_native                                    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_dns64                                   = false
  cidr_block                                     = "10.0.6.0/24"
  availability_zone                              = var.availability_zone_eu-west-1b
  assign_ipv6_address_on_creation                = false

  tags = {
    name = "job-vpc"
    Name = "db-subnet-2-ireland-b"
  }
}

resource "aws_route_table_association" "subnet-0c07e9f633b7ad321-rtb-0246fc2fff0813c8d" {
  subnet_id      = aws_subnet.subnet-0c07e9f633b7ad321.id
  route_table_id = aws_route_table.rtb-0246fc2fff0813c8d.id
}

resource "aws_route_table_association" "subnet-0c57cb6149aa178b0-rtb-01189934413da7ff3" {
  subnet_id      = aws_subnet.subnet-0c57cb6149aa178b0.id
  route_table_id = aws_route_table.rtb-01189934413da7ff3.id
}

resource "aws_route_table_association" "subnet-0ea9030fbd378293c-rtb-0246fc2fff0813c8d" {
  subnet_id      = aws_subnet.subnet-0ea9030fbd378293c.id
  route_table_id = aws_route_table.rtb-0246fc2fff0813c8d.id
}

resource "aws_internet_gateway" "igw-04f7555cdefd7d61d" {
  vpc_id = aws_vpc.vpc-006a5df3c1fe74a41.id

  tags = {
    name = "job-vpc"
    Name = "project-igw"
  }
}

resource "aws_vpc" "vpc-006a5df3c1fe74a41" {
  instance_tenancy                     = "default"
  enable_network_address_usage_metrics = false
  enable_dns_support                   = true
  enable_dns_hostnames                 = true
  cidr_block                           = "10.0.0.0/16"
  assign_generated_ipv6_cidr_block     = false

  tags = {
    name = "job-vpc"
    Name = "Job-VPC"
  }
}

resource "aws_route_table_association" "subnet-07da3e8eccb3f49f0-rtb-0d940ea4b95a9694b" {
  subnet_id      = aws_subnet.subnet-07da3e8eccb3f49f0.id
  route_table_id = aws_route_table.rtb-0d940ea4b95a9694b.id
}

