cidr                    = "10.0.0.0/16"
instance_type           = "t2.micro"
ami-id                  = "ami-07170aa5b08fe4af5"
destination_cidr_block  = "0.0.0.0/0"
subnets_cidr            = ["10.0.0.0/24", "10.0.1.0/24"]
subnets_name            = ["Lab2-Pub-Subnet", "Lab2-priv-Subnet"]
map_public_ip_on_launch = ["true", "false"]
cidr_blocks_allow_all = ["0.0.0.0/0"]