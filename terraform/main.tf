# Define Docker container resource
resource "docker_container" "web" {
  image = "nginx:latest"
  name  = "nginx_container"
  ports {
    internal = 80
    external = 8080
  }
}

# Define Docker volume resource
resource "docker_volume" "data" {
  name = "nginx_data"
}

# Define Docker network resource
resource "docker_network" "backend" {
  name = "backend_network"
}

# Define outputs to retrieve information
output "container_id" {
  value = docker_container.web.id
}

output "network_id" {
  value = docker_network.backend.id
}
