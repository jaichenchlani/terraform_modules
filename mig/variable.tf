variable "project" { 
    type            = string
    default         = null
}

variable "name" { 
    type            = string
    default         = "mig-1"
}

variable "zone" { 
    type            = string
    default         = "us-east1-b"
}

variable "source_instance_template" { 
    type            = string
    default         = "instance-template-1"
}

variable "health_check" { 
    type            = string
    default         = null
}

variable "target_size" { 
    type            = number
    default         = 2
}

variable "port" { 
    type            = number
    default         = 80
}