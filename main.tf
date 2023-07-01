module "gke_cluster" {
  source         = "github.com/artemvoloshyn/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}
terraform {
  backend "gcs" {
    bucket = "test_bucket_project_1712"
    prefix = "terraform/state"
  }
}
  
