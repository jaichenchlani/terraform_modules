variable "name" { 
    type            = string
    default         = "alertpolicy1"
}

variable "description" { 
    type            = string
    default         = null
}

variable "enabled" { 
    type            = bool
    default         = true
}

variable "combiner" { 
    type            = string
    default         = "OR"
}

variable "filter" { 
    type            = string
    default         = null
}

variable "alignment_period" { 
    type            = string
    default         = "60s"
}

variable "per_series_aligner" { 
    type            = string
    default         = "ALIGN_RATE"
}

variable "cross_series_reducer" { 
    type            = string
    default         = "REDUCE_SUM"
}

variable "comparison" { 
    type            = string
    default         = "COMPARISON_GT"
}

variable "threshold_value" { 
    type            = string
    default         = 100
}

variable group_by_fields { 
    type            = string
    default         = null
}

variable "duration" { 
    type            = string
    default         = "0s"
}

variable "auto_close" { 
    type            = string
    default         = "1800s"
}

variable "notification_channels" { 
    type            = list(string)
    default         = null
}
