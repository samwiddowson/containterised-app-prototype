resource "docker_container" "task_api" {
  image = var.task_api_image_id
  name  = "task-api"

  ports {
    internal = 8080
    external = 8080
  }
}
