variable "name" { 
    type            = string
    default         = "logsink1"
}

variable "destination" {
    type            = string
    default         = null
}

variable "filter" {
    type            = string
    default         = null
}

variable "unique_writer_identity" {
    type            = bool
    default         = true
}