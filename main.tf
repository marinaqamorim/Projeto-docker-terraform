# Configure the Docker provider
provider "docker" {
  host = "tcp://0.0.0.0:80"
}

resource "docker_container" "marina_imagen" {
  image = "marina_imagen:latest"
  name  = "marina_imagen"
  volumes {
    container_path  = "/myapp/"
    # replace the host_path with full path for your project directory starting from root directory /
    host_path = "/home/marina/Documentos/projeto-terra/" 
    read_only = false
  }
  ports {
    internal = 8080
    external = 8080
  }
}