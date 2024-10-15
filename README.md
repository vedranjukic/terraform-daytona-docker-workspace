# Terraform Docker Daytona Module

This Terraform module deploys a Daytona workspace in a Docker container.

## Usage

```hcl
module "daytona_workspace" {
  source  = "github.com/your-username/terraform-docker-daytona"
  version = "1.0.0"

  container_name                   = "my-daytona-container"
  api_key                          = "your-api-key"
  agent_download_url               = "https://your-agent-download-url"
  daytona_client_id                = "your-client-id"
  daytona_ws_project_name          = "your-project-name"
  daytona_ws_project_repository_url = "https://your-repo-url"
  daytona_server_api_key           = "your-server-api-key"
  daytona_server_version           = "your-server-version"
  daytona_ws_id                    = "your-workspace-id"
  daytona_server_api_url           = "https://your-server-api-url"
  daytona_server_url               = "https://your-server-url"
}
```

## Requirements

- Terraform >= 0.13.0
- kreuzwerker/docker provider ~> 3.0.0

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| container_name | The name of the container | `string` | `"my-daytona-container"` | no |
| api_key | Daytona Server Api key | `string` | n/a | yes |
| agent_download_url | Daytona Agent Download Url | `string` | n/a | yes |
| daytona_client_id | DAYTONA_CLIENT_ID | `string` | n/a | yes |
| daytona_telemetry_enabled | DAYTONA_TELEMETRY_ENABLED | `string` | `"true"` | no |
| daytona_agent_log_file_path | DAYTONA_AGENT_LOG_FILE_PATH | `string` | `"(HOME)/.daytona-agent.log"` | no |
| daytona_ws_project_name | DAYTONA_WS_PROJECT_NAME | `string` | n/a | yes |
| daytona_ws_project_repository_url | DAYTONA_WS_PROJECT_REPOSITORY_URL | `string` | n/a | yes |
| daytona_server_api_key | DAYTONA_SERVER_API_KEY | `string` | n/a | yes |
| daytona_server_version | DAYTONA_SERVER_VERSION | `string` | n/a | yes |
| daytona_ws_id | DAYTONA_WS_ID | `string` | n/a | yes |
| daytona_server_api_url | DAYTONA_SERVER_API_URL | `string` | n/a | yes |
| daytona_server_url | DAYTONA_SERVER_URL | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| container_name | The name of the container |
| container_id | The ID of the container |
| image_id | The ID of the Docker image |

## License

This module is released under the MIT License.