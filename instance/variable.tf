variable "machine_type" {
  type = string
}

variable "name" {
  type = string
}

variable "zone" {
  type = string
}

variable "description" {
  type    = string
  default = null
}

variable "project_id" {
  type = string
}

variable "network_interface" {
  type = list(object({
    network            = optional(string)
    subnetwork         = optional(string)
    subnetwork_project = optional(string)
    network_ip         = optional(string)
    nic_type           = optional(string)
    stack_type         = optional(string)
    queue_count        = optional(number)
    access_config = optional(list(object({
      nat_ip                 = optional(string)
      public_ptr_domain_name = optional(string)
      network_tier           = optional(string)
    })))
    alias_ip_range = optional(object({
      ip_cidr_range         = optional(string)
      subnetwork_range_name = optional(string)
    }))
    ipv6_access_config = optional(object({
      public_ptr_domain_name = optional(string)
      network_tier           = optional(string)
    }))
  }))
  default = []
}


variable "boot_disk" { #size in initialize params must be input as "1Gi"
  type = object({
    auto_delete       = optional(bool)
    device_name       = optional(string)
    mode              = optional(string)
    kms_key_self_link = optional(string)
    source            = optional(string)
    initialize_params = optional(object({
      size  = optional(number)
      type  = optional(string)
      image = optional(string)
    }))
  })
  default = {}
}

variable "allow_stopping_for_update" {
  type    = bool
  default = null
}

variable "can_ip_forward" {
  type    = bool
  default = null
}

variable "desired_status" {
  type    = string
  default = "RUNNING"
}

variable "deletion_protection" {
  type    = bool
  default = false
}

variable "hostname" {
  type    = string
  default = null
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "metadata" {
  type = map(string)
  default = {
    enable-oslogin         = "TRUE"
    block-project-ssh-keys = "TRUE"
  }
}

variable "metadata_startup_script" {
  type    = string
  default = null
}

variable "min_cpu_platform" {
  type    = string
  default = null
}

variable "tags" {
  type    = list(string)
  default = []
}

variable "enable_display" {
  type    = bool
  default = false
}

variable "resource_policies" {
  type    = list(string)
  default = null
}

variable "attached_disk" {
  type = list(object({
    source                  = optional(string)
    device_name             = optional(string)
    mode                    = optional(string)
    disk_encryption_key_raw = optional(string)
    kms_key_self_link       = optional(string)
  }))
  default = []
}

variable "guest_accelerator" {
  type = list(object({

    type  = optional(string)
    count = optional(number)

  }))
  default = []
}

variable "scheduling" {
  type = object({

    preemptible         = optional(bool)
    on_host_maintenance = optional(string)
    automatic_restart   = optional(bool)
    min_node_cpus       = optional(number)
    node_affinities = optional(list(object({

      key      = optional(string)
      operator = optional(string)
      values   = optional(string)
    })))
  })
  default = {}
}

variable "scratch_disk_interface" {
  type    = string
  default = null
}

variable "service_account" {
  type = object({
    email  = optional(string)
    scopes = optional(list(string))
  })
  default = {}
}

variable "shielded_instance_config" {
  type = object({

    enable_secure_boot          = optional(bool)
    enable_vtpm                 = optional(bool)
    enable_integrity_monitoring = optional(bool)
  })
  default = {}
}

variable "reservation_affinity" {
  type = list(object({
    type = string
    specific_reservation = optional(list(object({
      key    = string
      values = string
    })))
  }))
  default = []
}

variable "enable_confidential_compute" {
  type    = bool
  default = null
}

variable "advanced_machine_features" {
  type = list(object({
    enable_nested_virtualization = optional(bool)
    threads_per_core             = optional(number)
  }))
  default = []
}