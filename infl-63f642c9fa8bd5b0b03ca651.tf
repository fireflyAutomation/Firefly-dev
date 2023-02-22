resource "google_compute_subnetwork" "default-1fc" {
  ip_cidr_range            = "10.212.0.0/20"
  name                     = "default"
  network                  = "https://www.googleapis.com/compute/v1/projects/automation-358110/global/networks/default"
  private_ip_google_access = false
  project                  = "automation-358110"
  purpose                  = "PRIVATE"
  region                   = "me-central1"
  stack_type               = "IPV4_ONLY"
}




resource "google_compute_subnetwork" "default-af6" {
  ip_cidr_range            = "10.210.0.0/20"
  name                     = "default"
  network                  = "https://www.googleapis.com/compute/v1/projects/automation-358110/global/networks/default"
  private_ip_google_access = false
  project                  = "automation-358110"
  purpose                  = "PRIVATE"
  region                   = "europe-west12"
  stack_type               = "IPV4_ONLY"
}




resource "google_storage_bucket" "tfstate-firefly-integrations-455" {
  default_event_based_hold    = false
  location                    = "US"
  name                        = "tfstate-firefly-integrations"
  project                     = "automation-358110"
  public_access_prevention    = "enforced"
  requester_pays              = false
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}




resource "google_compute_firewall" "gke-autopilot-cluster-1-3fa4067e-exkubelet-475" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  disabled      = false
  name          = "gke-autopilot-cluster-1-3fa4067e-exkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/automation-358110/global/networks/default"
  project       = "automation-358110"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-autopilot-cluster-1-3fa4067e-node"]
}




resource "google_compute_firewall" "gke-autopilot-cluster-1-3fa4067e-inkubelet-cd8" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  disabled      = false
  name          = "gke-autopilot-cluster-1-3fa4067e-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/automation-358110/global/networks/default"
  priority      = 999
  project       = "automation-358110"
  source_ranges = ["10.8.0.0/17"]
  source_tags   = ["gke-autopilot-cluster-1-3fa4067e-node"]
  target_tags   = ["gke-autopilot-cluster-1-3fa4067e-node"]
}




resource "google_compute_firewall" "gke-autopilot-cluster-1-3fa4067e-vms-b22" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }
  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  disabled      = false
  name          = "gke-autopilot-cluster-1-3fa4067e-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/automation-358110/global/networks/default"
  project       = "automation-358110"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-autopilot-cluster-1-3fa4067e-node"]
}




resource "google_compute_firewall" "gke-autopilot-cluster-1-3fa4067e-all-284" {
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "sctp"
  }
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  direction     = "INGRESS"
  disabled      = false
  name          = "gke-autopilot-cluster-1-3fa4067e-all"
  network       = "https://www.googleapis.com/compute/v1/projects/automation-358110/global/networks/default"
  project       = "automation-358110"
  source_ranges = ["10.8.0.0/17"]
  target_tags   = ["gke-autopilot-cluster-1-3fa4067e-node"]
}




resource "google_compute_forwarding_rule" "gke-autopilot-cluster-1-3fa4067e-81458599-pe-17f" {
  all_ports              = false
  allow_global_access    = false
  ip_address             = "10.128.0.15"
  is_mirroring_collector = false
  load_balancing_scheme  = ""
  name                   = "gke-autopilot-cluster-1-3fa4067e-81458599-pe"
  network                = "https://www.googleapis.com/compute/v1/projects/automation-358110/global/networks/default"
  network_tier           = "PREMIUM"
  project                = "automation-358110"
  region                 = "us-central1"
  service_directory_registrations {
    namespace = "goog-psc-default"
  }
  target = "https://www.googleapis.com/compute/v1/projects/gke-prod-us-central1-1f6f/regions/us-central1/serviceAttachments/gke-3fa4067e426f438caf8f-adde-ac77-sa"
}




resource "google_compute_address" "gke-autopilot-cluster-1-3fa4067e-81458599-pe-98c" {
  address      = "10.128.0.15"
  address_type = "INTERNAL"
  name         = "gke-autopilot-cluster-1-3fa4067e-81458599-pe"
  network_tier = "PREMIUM"
  project      = "automation-358110"
  purpose      = "GCE_ENDPOINT"
  region       = "us-central1"
  subnetwork   = "https://www.googleapis.com/compute/v1/projects/automation-358110/regions/us-central1/subnetworks/default"
}




resource "google_container_cluster" "autopilot-cluster-1-8be" {
  addons_config {
    dns_cache_config {
      enabled = true
    }
    gce_persistent_disk_csi_driver_config {
      enabled = true
    }
    gcp_filestore_csi_driver_config {
      enabled = true
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
    http_load_balancing {
      disabled = false
    }
    network_policy_config {
      disabled = true
    }
  }
  binary_authorization {
    evaluation_mode = "DISABLED"
  }
  cluster_autoscaling {
    auto_provisioning_defaults {
      management {
        auto_repair  = true
        auto_upgrade = true
      }
      oauth_scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      upgrade_settings {
        max_surge = 1
        strategy  = "SURGE"
      }
    }
    enabled = true
    resource_limits {
      maximum       = 1000000000
      resource_type = "cpu"
    }
    resource_limits {
      maximum       = 1000000000
      resource_type = "memory"
    }
    resource_limits {
      maximum       = 1000000000
      resource_type = "nvidia-tesla-t4"
    }
    resource_limits {
      maximum       = 1000000000
      resource_type = "nvidia-tesla-a100"
    }
  }
  database_encryption {
    state = "DECRYPTED"
  }
  datapath_provider = "ADVANCED_DATAPATH"
  default_snat_status {
    disabled = false
  }
  enable_l4_ilb_subsetting = false
  enable_shielded_nodes    = true
  enable_tpu               = false
  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "10.8.0.0/17"
    services_ipv4_cidr_block = "10.8.128.0/22"
  }
  location = "us-central1"
  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }
  logging_service = "logging.googleapis.com/kubernetes"
  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS"]
  }
  monitoring_service = "monitoring.googleapis.com/kubernetes"
  name               = "autopilot-cluster-1"
  network            = "projects/automation-358110/global/networks/default"
  networking_mode    = "VPC_NATIVE"
  node_locations     = ["us-central1-a", "us-central1-b", "us-central1-c", "us-central1-f"]
  node_pool_defaults {
    node_config_defaults {
      logging_variant = "DEFAULT"
    }
  }
  node_version = "1.24.7-gke.900"
  notification_config {
    pubsub {
      enabled = false
    }
  }
  private_cluster_config {
    enable_private_endpoint = false
    enable_private_nodes    = false
    master_global_access_config {
      enabled = false
    }
  }
  project = "automation-358110"
  release_channel {
    channel = "REGULAR"
  }
  service_external_ips_config {
    enabled = false
  }
  subnetwork = "projects/automation-358110/regions/us-central1/subnetworks/default"
  vertical_pod_autoscaling {
    enabled = true
  }
  workload_identity_config {
    workload_pool = "automation-358110.svc.id.goog"
  }
}

