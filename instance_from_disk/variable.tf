variable "name" { 
    type            = string
    default         = "server1"
}

variable "zone" { 
    type            = string
    default         = "us-east1-b"
}

variable "machine_type" {
  type = string
  default = "n1-standard-1"
}

variable "image" {
    type            = string
    default         = "debian-9-stretch-v20220406"
}

variable "metadata_startup_script" { 
    type            = string
    default         = null
}

variable "environment" {
    type            = string
    default         = "dev"
}

variable "auto_delete" {
    type = bool
    description = "Whether or not the disk should be auto-deleted. Default is False."
    default = true
}