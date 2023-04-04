variable "name" { 
    type            = string
    default         = "my_node_pool" 
}

variable "project" { 
    type            = string
    default         = null
}

variable "region" { 
    type            = string
    default         = "us-east1"
}

variable "environment" { 
    type            = string
    default         = "dev"
}

variable "cluster" { 
    type            = string
    default         = null
}
variable "gke_num_nodes" { 
    type            = number
    default         = 1
}

variable "machine_type" {
  type = map(string)
  default = {
      dev = "n1-standard-2"
      qa = "n1-standard-4"
  }
}