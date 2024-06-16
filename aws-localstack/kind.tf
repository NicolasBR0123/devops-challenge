terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.13.0"
    }
  }
}

provider "docker" {
  # Configurações do provedor Docker, se necessário
  host = "unix:///var/run/docker.sock"
}

resource "null_resource" "test_kind_cluster" {
  provisioner "local-exec" {
    command = "kind create cluster"
  }
}

