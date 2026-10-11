resource "mongodbatlas_cluster_outage_simulation" "cluster_outage_simulations" {
  for_each = var.cluster_outage_simulations

  cluster_name             = each.value.cluster_name
  project_id               = each.value.project_id
  delete_on_create_timeout = each.value.delete_on_create_timeout

  dynamic "outage_filters" {
    for_each = each.value.outage_filters
    content {
      cloud_provider = outage_filters.value.cloud_provider
      region_name    = outage_filters.value.region_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

