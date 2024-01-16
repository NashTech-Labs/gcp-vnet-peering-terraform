# Create the first VPC network
resource "google_compute_network" "network1" {
  name                    = var.network1_name
  auto_create_subnetworks = false
}

# Create the second VPC network
resource "google_compute_network" "network2" {
  name                    = var.network2_name
  auto_create_subnetworks = false
}

# Create subnets in the first VPC network
resource "google_compute_subnetwork" "subnet1" {
  name          = var.subnet1_name
  ip_cidr_range = var.subnet1_cidr
  region        = var.region
  network       = google_compute_network.network1.self_link
}

# Create subnets in the second VPC network
resource "google_compute_subnetwork" "subnet2" {
  name          = var.subnet2_name
  ip_cidr_range = var.subnet2_cidr
  region        = var.region
  network       = google_compute_network.network2.self_link
}
