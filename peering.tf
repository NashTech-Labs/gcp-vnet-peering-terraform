# Create VPC peering connection from network1 to network2
resource "google_compute_network_peering" "peering1_to_2" {
  name          = var.peering1_to_2_name
  network       = google_compute_network.network1.self_link
  peer_network  = google_compute_network.network2.self_link
  auto_create_routes = false
}

# Create VPC peering connection from network2 to network1
resource "google_compute_network_peering" "peering2_to_1" {
  name          = var.peering2_to_1_name
  network       = google_compute_network.network2.self_link
  peer_network  = google_compute_network.network1.self_link
  auto_create_routes = false
}
