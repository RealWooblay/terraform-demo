variable "project_id" {}
variable "region" {
  default = "us-central1"
}
variable "credentials_file" {}
variable "image_url" {
  default = "gcr.io/498855991921/playwright-demo:latest"
}
