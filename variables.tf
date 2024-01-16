variable "service_account_key_file" {
  description = "Path to the service account key file"
}

variable "project_id" {
  description = "Google Cloud Platform Project ID"
}

variable "region" {
  description = "GCP region for resources"
  default     = "us-central1"
}

variable "network1_name" {
  description = "Name for the first VPC network"
  default     = "network1"
}

variable "network2_name" {
  description = "Name for the second VPC network"
  default     = "network2"
}

variable "subnet1_name" {
  description = "Name for the subnet in network1"
  default     = "subnet1"
}

variable "subnet2_name" {
  description = "Name for the subnet in network2"
  default     = "subnet2"
}

variable "subnet1_cidr" {
  description = "CIDR block for subnet1"
  default     = "10.1.0.0/24"
}

variable "subnet2_cidr" {
  description = "CIDR block for subnet2"
  default     = "10.2.0.0/24"
}

variable "peering1_to_2_name" {
  description = "Name for VPC peering from network1 to network2"
  default     = "peering1-to-2"
}

variable "peering2_to_1_name" {
  description = "Name for VPC peering from network2 to network1"
  default     = "peering2-to-1"
}
