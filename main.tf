module "gke_cluster" {
  source         = "github.com/macedonsky777/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 1
}

terraform {
  backend "gcs" {
    bucket = "demo_k8s_test_prom"
    prefix = "terraform/state"
  }
}
