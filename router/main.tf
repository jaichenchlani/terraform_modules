resource "google_compute_router" "default" {
  name    = var.name
  region  = var.region
  network = var.network

  bgp {
    asn = 64514
  }
}