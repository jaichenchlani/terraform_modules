variable "project" { 
    type            = string
    default         = null
}

variable "name" { 
    type            = string
    default         = "my-vpc-1"
}

variable "auto_create_subnets_flag" { 
    type            = bool
    default         = false
}