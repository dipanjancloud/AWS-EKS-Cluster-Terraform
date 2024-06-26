# Stack Name
variable "cluster_name" {
    type = string
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnet_az1_cidr" {
    type = string
    default = "10.0.1.0/24"
}

variable "public_subnet_az2_cidr" {
    type = string
    default = "10.0.2.0/24"
}

# Worker Node instance size
variable "instance_size" {
    type = string
}

# Region
variable "region" {
    type    = string
}

# SSH Access
variable "ssh_access" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
}

# UI Access
variable "http_access" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
}

# Environment
variable "env" {
    type    = string
    default = "Prod"
}

# Type
variable "type" {
    type    = string
    default = "Production"
}

# Key 
variable "key_name" {
    type    = string
    default = "Demo-key"
}

# Instance count
variable "instance_count" {
    type = string
}