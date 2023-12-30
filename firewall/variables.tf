variable firewall_name {
    type = string 
}

variable network {
    type = string 
}

variable project_name {
    type = string 
}


variable source_ranges {
    type = list(string)
}

variable "rules" {
  type = map(object({
    protocol = string
    ports    = list(number)
  }))
  default = {
    rule1 = {
      protocol = "tcp"
      ports    = [80, 443]
    }
    rule2 = {
      protocol = "udp"
      ports    = [53]
    }
  }
}