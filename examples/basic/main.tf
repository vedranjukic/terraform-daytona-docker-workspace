module "daytona_workspace" {
  source = "../../"

  CONTAINER_NAME                   = "example-daytona-container"
  AGENT_DOWNLOAD_URL               = "https://your-agent-download-url"
  DAYTONA_CLIENT_ID                = "your-client-id"
  DAYTONA_WS_PROJECT_NAME          = "example-project"
  DAYTONA_WS_PROJECT_REPOSITORY_URL = "https://github.com/example/repo.git"
  DAYTONA_SERVER_API_KEY           = "your-server-api-key"
  DAYTONA_SERVER_VERSION           = "v0.39.0"
  DAYTONA_WS_ID                    = "example-ws-id"
  DAYTONA_SERVER_API_URL           = "https://api.example.daytona.io"
  DAYTONA_SERVER_URL               = "https://example.daytona.io"
}

output "container_name" {
  value = module.daytona_workspace.container_name
}

output "container_id" {
  value = module.daytona_workspace.container_id
}

output "image_id" {
  value = module.daytona_workspace.image_id
}