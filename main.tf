resource "google_compute_network" "network1" {
  name                    = var.network1_name
  auto_create_subnetworks = false
}

resource "google_compute_network" "network2" {
  name                    = var.network2_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name          = var.subnet1_name
  ip_cidr_range = var.subnet1_cidr
  region        = var.region
  network       = google_compute_network.network1.self_link
}

resource "google_compute_subnetwork" "subnet2" {
  name          = var.subnet2_name
  ip_cidr_range = var.subnet2_cidr
  region        = var.region
  network       = google_compute_network.network2.self_link
}

resource "google_compute_network_peering" "peering1_to_2" {
  name          = var.peering1_to_2_name
  network       = google_compute_network.network1.self_link
  peer_network  = google_compute_network.network2.self_link
  auto_create_routes = false
}

resource "google_compute_network_peering" "peering2_to_1" {
  name          = var.peering2_to_1_name
  network       = google_compute_network.network2.self_link
  peer_network  = google_compute_network.network1.self_link
  auto_create_routes = false
}
