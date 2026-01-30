# output "instance-id" {
#   value = google_compute_instance.default.id
# }

# output "instance-name" {
#   value = google_compute_instance.default.name
# }

# output "zone_name" {
#   value = google_compute_instance.default.zone
# }

output "vpc-name" {
  value = google_compute_network.vpc.name
}

output "vpc-id" {
  value = google_compute_network.vpc.id
}