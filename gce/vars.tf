variable "instance_name" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "n1-standard-1"
}


variable "instance_zone" {
  type = string
}


variable "instance_tags" {
  type = list(string)
}


variable "instance_boot_image" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "instance_boot_disk_size" {
  type    = number
  default = 30
}

variable "project_name" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "instance_region" {
  type = string
}

variable "instance_subnet" {
  type = string
}

variable "external_ip_enabled" {
    type = bool 
    default = false 
}

 
variable domain_name {
    type = string 
}