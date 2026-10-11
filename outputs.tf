output "cluster_outage_simulations_id" {
  description = "Map of id values across all cluster_outage_simulations, keyed the same as var.cluster_outage_simulations except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_cluster_outage_simulation.cluster_outage_simulations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cluster_outage_simulations_cluster_name" {
  description = "Map of cluster_name values across all cluster_outage_simulations, keyed the same as var.cluster_outage_simulations except keys with no cluster_name are omitted"
  value       = { for k, v in mongodbatlas_cluster_outage_simulation.cluster_outage_simulations : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "cluster_outage_simulations_delete_on_create_timeout" {
  description = "Map of delete_on_create_timeout values across all cluster_outage_simulations, keyed the same as var.cluster_outage_simulations except keys with no delete_on_create_timeout are omitted"
  value       = { for k, v in mongodbatlas_cluster_outage_simulation.cluster_outage_simulations : k => v.delete_on_create_timeout if v.delete_on_create_timeout != null }
}
output "cluster_outage_simulations_outage_filters" {
  description = "Map of outage_filters values across all cluster_outage_simulations, keyed the same as var.cluster_outage_simulations except keys with no outage_filters are omitted"
  value       = { for k, v in mongodbatlas_cluster_outage_simulation.cluster_outage_simulations : k => v.outage_filters if v.outage_filters != null && length(v.outage_filters) > 0 }
}
output "cluster_outage_simulations_project_id" {
  description = "Map of project_id values across all cluster_outage_simulations, keyed the same as var.cluster_outage_simulations except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_cluster_outage_simulation.cluster_outage_simulations : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "cluster_outage_simulations_simulation_id" {
  description = "Map of simulation_id values across all cluster_outage_simulations, keyed the same as var.cluster_outage_simulations except keys with no simulation_id are omitted"
  value       = { for k, v in mongodbatlas_cluster_outage_simulation.cluster_outage_simulations : k => v.simulation_id if v.simulation_id != null && length(v.simulation_id) > 0 }
}
output "cluster_outage_simulations_start_request_date" {
  description = "Map of start_request_date values across all cluster_outage_simulations, keyed the same as var.cluster_outage_simulations except keys with no start_request_date are omitted"
  value       = { for k, v in mongodbatlas_cluster_outage_simulation.cluster_outage_simulations : k => v.start_request_date if v.start_request_date != null && length(v.start_request_date) > 0 }
}
output "cluster_outage_simulations_state" {
  description = "Map of state values across all cluster_outage_simulations, keyed the same as var.cluster_outage_simulations except keys with no state are omitted"
  value       = { for k, v in mongodbatlas_cluster_outage_simulation.cluster_outage_simulations : k => v.state if v.state != null && length(v.state) > 0 }
}

