variable "access_key" { 
  description = "AWS access key"
}

variable "secret_key" { 
  description = "AWS secret access key"
}

variable "pubkey" { 
  description = "AWS pub key used to launch instances"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDViAd1D2aXdwKC1q5DTRItWQJI6pDopUnfTq7r37klQb9Ykswe/9nQejzpgcXnRnFl11Odjb+tRKmIqxBeSuUmn1jH+bB8hBbPpY8UEM/3bXzQUhqVl/GjSdIYzFB6ZBx68y4HwkiAQcYO71jVcjkEphzmWlLdMoatVH0OFlBs5ua1yemtpp35f/Czf5oeoFlAJwqeUy09oO7TFLC2Wp6llrcM1ayqJTK1SWIcJIqhG9S8GMPOqGW64EZPUaYKc8lrm4ppBQbp6/L8/gdLaX/WVIwFmczzezAx5HXDFDpcNGnDB1qfJ8p4p34oUxdI3vh9Ktr/XSR46fpWvnq8i7y9 ec2-user@ip-172-31-9-203"
}

variable "region"     { 
  default     = "us-west-2" 
}

variable "myip"     { 
  description = "Replace with your public IP address"
  default     = "192.168.0.10"
}

variable "vpc_name" {
  description = "VPC name to launch environment"
  default     = "beanstalk"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "172.40.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "172.40.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  default     = "172.40.2.0/24"
}

variable "amis" {
  description = "AMI"
  default = {
    fluentd = "ami-f173cc91"
  }
}

variable "instance_type" {
  description = "Instance types"
  default = {
    fluentd = "t2.micro"
  }
}

variable "instance_count" {
  description = "Instance count"
  default = {
    fluentd = "1"
  }
}
