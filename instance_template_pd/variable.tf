variable "project" { 
    type            = string
    default         = null
}

variable "name" { 
    type            = string
    default         = "instance-template-1"
}

variable "description" { 
    type            = string
    default         = "Instance template with Persistent Disk."
}

variable "zone" { 
    type            = string
    default         = "us-east1-b"
}

variable "network" { 
    type            = string
    default         = "default"
}

variable "machine_type" {
  type = string
  default = "n1-standard-1"
}

variable "image" {
    type            = string
    default         = "debian-9-stretch-v20220406"
}

variable "startup_script" { 
    type            = string
    default         = null
}

variable "environment" {
    type            = string
    default         = "dev"
}

variable "disk" {
    type            = string
    default         = "disk-1"
}
variable "network_tags" {
    type            = list
    default         = null
}