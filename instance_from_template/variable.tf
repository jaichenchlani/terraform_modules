variable "project" { 
    type            = string
    default         = null
}

variable "name" { 
    type            = string
    default         = "instance-from-template-1"
}

variable "zone" { 
    type            = string
    default         = null
}

variable "source_instance_template" { 
    type            = string
    default         = "instance-template-1"
}
