terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_cloud_run_service" "demo_service" {
  name     = "playwright-demo"
  location = var.region

  template {
    spec {
      containers {
        image = var.image_url
      }
    }
  }
  autogenerate_revision_name = true
}
