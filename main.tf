resource "docker_image" "workspace" {
  name         = "daytonaio/workspace-project"
  keep_locally = true

  lifecycle {
    prevent_destroy = true
  }
}

resource "docker_container" "workspace" {
  image = docker_image.workspace.image_id
  name  = var.DAYTONA_WS_PROJECT_NAME
  ports {
    internal = 63899
    external = 8000
  }
  entrypoint = ["sleep"]
  command    = ["infinity"]
  env        = [
    "GIT_SSL_NO_VERIFY=true",
    "DAYTONA_CLIENT_ID=${var.DAYTONA_CLIENT_ID}",
    "DAYTONA_TELEMETRY_ENABLED=${var.DAYTONA_TELEMETRY_ENABLED}",
    "DAYTONA_AGENT_LOG_FILE_PATH=${var.DAYTONA_AGENT_LOG_FILE_PATH}",
    "DAYTONA_WS_PROJECT_NAME=${var.DAYTONA_WS_PROJECT_NAME}",
    "DAYTONA_WS_PROJECT_REPOSITORY_URL=${var.DAYTONA_WS_PROJECT_REPOSITORY_URL}",
    "DAYTONA_SERVER_API_KEY=${var.DAYTONA_SERVER_API_KEY}",
    "DAYTONA_SERVER_VERSION=${var.DAYTONA_SERVER_VERSION}",
    "DAYTONA_WS_ID=${var.DAYTONA_WS_ID}",
    "DAYTONA_SERVER_API_URL=${var.DAYTONA_SERVER_API_URL}",
    "DAYTONA_SERVER_URL=${var.DAYTONA_SERVER_URL}"
  ]
  host {
    host = "host.docker.internal"
    ip   = "host-gateway"
  }

  provisioner "local-exec" {
    command = <<-EOT
      docker exec ${self.name} /bin/sh -c 'curl -sfL -H "Authorization: Bearer ${var.DAYTONA_SERVER_API_KEY}" ${var.DAYTONA_SERVER_API_URL}/binary/script | sudo -E bash'
    EOT
  }

  provisioner "local-exec" {
    command = <<-EOT
      docker exec -d ${self.name} /bin/sh -c 'daytona agent'
    EOT
  }
}