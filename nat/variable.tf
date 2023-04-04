variable "project" { 
    type            = string
    default         = null
}

variable "name" { 
    type            = string
    default         = "my-nat-gateway"
}

variable "region" { 
    type            = string
    default         = null
}

variable "router" { 
    type            = string
    default         = "my-router"
}
