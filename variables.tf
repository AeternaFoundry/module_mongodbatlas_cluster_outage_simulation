variable "cluster_outage_simulations" {
  description = <<EOT
Map of cluster_outage_simulations, attributes below
Required:
    - cluster_name
    - project_id
    - outage_filters (block):
        - cloud_provider (required)
        - region_name (required)
Optional:
    - delete_on_create_timeout
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    cluster_name             = string
    project_id               = string
    delete_on_create_timeout = optional(bool)
    outage_filters = list(object({
      cloud_provider = string
      region_name    = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cluster_outage_simulations : (
        length(v.outage_filters) >= 1
      )
    ])
    error_message = "Each outage_filters list must contain at least 1 items"
  }
}

