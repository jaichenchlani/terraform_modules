variable "project" { 
    type            = string
    default         = null
}

variable "backend_service_name" { 
    type            = string
    default         = "web-backend"
}

variable "health_checks" { 
    type            = list
    default         = []
}

variable "timeout_sec" { 
    type            = number
    default         = 30
}

variable "backend_mig_name" { 
    type            = string
    default         = "mig-1"
}

variable "url_map_name" { 
    type            = string
    default         = "url-map-1"
}

variable "proxy_name" { 
    type            = string
    default         = "http-proxy-1"
}

variable "lb_ipv4_name" { 
    type            = string
    default         = "lb-ipv4-1"
}

variable "forwarding_rule_name" { 
    type            = string
    default         = "forwarding-rule-1"
}

