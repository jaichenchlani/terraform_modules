variable "name" { 
    type            = string
    default         = "my_firewall" 
}
variable "network" { 
    type            = string
    default         = "default"
}
variable "description" { 
    type            = string
    default         = "Firewall rule targeting tagged instances."
}
variable "protocol" { 
    type            = string
    default         = null
}
variable "ports" { 
    type            = list
    default         = null
}
variable "source_ranges" { 
    type            = list
    default         = null
}
variable "target_tags" {
    type            = list
    default         = null
}