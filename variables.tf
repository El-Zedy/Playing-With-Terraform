variable "cidr" {
  type = string
}

/* variable "public_cidr" {
    type = string
}

variable "private_cidr" {
    type = string
} */

variable "instance_type" {
  type = string
}

variable "ami-id" {
  type = string
}

variable "destination_cidr_block" {
  type = string

}
variable "subnets_cidr" {
  type = list(any)
  #default = ["10.20.1.0/24", "10.20.2.0/24"]
}
variable "subnets_name" {
  type = list(any)
}

variable "map_public_ip_on_launch" {
  type = list(any)
}

variable "cidr_blocks_allow_all" {
  type = list
}