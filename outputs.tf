output "container_name" {
  value       = docker_container.workspace.name
  description = "The name of the container"
}

output "container_id" {
  value       = docker_container.workspace.id
  description = "The ID of the container"
}

output "image_id" {
  value       = docker_image.workspace.image_id
  description = "The ID of the Docker image"
}