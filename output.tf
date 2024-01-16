output "network1_self_link" {
  value = google_compute_network.network1.self_link
}

output "network2_self_link" {
  value = google_compute_network.network2.self_link
}

output "peering1_to_2_self_link" {
  value = google_compute_network_peering.peering1_to_2.self_link
}

output "peering2_to_1_self_link" {
  value = google_compute_network_peering.peering2_to_1.self_link
}
