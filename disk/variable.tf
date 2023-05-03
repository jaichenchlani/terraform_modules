variable "project" { 
    type            = string
    default         = null
}
variable "region" { 
    type            = string
    default         = null
}
variable "environment" {
    type            = string
    default         = "dev"
}
variable "name" { 
    type            = string
    default         = "disk-1"
}
variable "type" { 
    type            = string
    default         = "pd-ssd"
}
variable "size" { 
    type            = number
    default         = 20
}