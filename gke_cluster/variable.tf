variable "name" { 
    type            = string
    default         = "my_cluster" 
}

variable "region" { 
    type            = string
    default         = "us-east1"
}

variable "network" { 
    type            = string
    default         = "default"
}

variable "subnetwork" { 
    type            = string
    default         = "default"
}

variable "environment" { 
    type            = string
    default         = null
}