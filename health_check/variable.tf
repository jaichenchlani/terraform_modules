variable "project" { 
    type            = string
    default         = null
}

variable "name" { 
    type            = string
    default         = "health-check-1"
}

variable "check_interval_sec" { 
    type            = number
    default         = 5
}

variable "healthy_threshold" { 
    type            = number
    default         = 2
}

variable "timeout_sec" { 
    type            = number
    default         = 5
}

variable "unhealthy_threshold" { 
    type            = number
    default         = 2
}

variable "port" { 
    type            = number
    default         = 80
}
