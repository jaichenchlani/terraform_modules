variable "name" { 
    type            = string
    default         = "my_bucket"
}

variable "project" { 
    type            = string
    default         = null
}

variable "environment" {
    type            = string
    default         = "dev"
}

variable "region" { 
    type            = string
    default         = "us-east1"
}

variable "versioning" { 
    type            = map
    default         = { enabled : true }
}

variable "logging" { 
    type            = map
    default         = {}
}

variable "force_destroy" { 
    type            = bool
    default         = true
}

variable "retention_policy" { 
    type            = object({ retention_period = number, is_locked = bool })
    default         = null
}

variable "labels" {
      type = map
      default = null
    }

variable "encryption" { 
    type            = map
    default         = null
}

variable "storage_class" { 
    type            = string
    default         = "REGIONAL"
}
