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

variable "disk" { 
    type            = string
    default         = "disk-1"
}

variable "target_size" { 
    type            = number
    default         = 2
}

variable "port" { 
    type            = number
    default         = 80
}