variable "DAYTONA_CLIENT_ID" {
  description = "DAYTONA_CLIENT_ID"
  type        = string
}

variable "DAYTONA_TELEMETRY_ENABLED" {
  description = "DAYTONA_TELEMETRY_ENABLED"
  type        = string
  default     = "true"
}

variable "DAYTONA_AGENT_LOG_FILE_PATH" {
  description = "DAYTONA_AGENT_LOG_FILE_PATH"
  type        = string
  default     = "(HOME)/.daytona-agent.log"
}

variable "DAYTONA_WS_PROJECT_NAME" {
  description = "DAYTONA_WS_PROJECT_NAME"
  type        = string
}

variable "DAYTONA_WS_PROJECT_REPOSITORY_URL" {
  description = "DAYTONA_WS_PROJECT_REPOSITORY_URL"
  type        = string
}

variable "DAYTONA_SERVER_API_KEY" {
  description = "DAYTONA_SERVER_API_KEY"
  type        = string
}

variable "DAYTONA_SERVER_VERSION" {
  description = "DAYTONA_SERVER_VERSION"
  type        = string
}

variable "DAYTONA_WS_ID" {
  description = "DAYTONA_WS_ID"
  type        = string
}

variable "DAYTONA_SERVER_API_URL" {
  description = "DAYTONA_SERVER_API_URL"
  type        = string
}

variable "DAYTONA_SERVER_URL" {
  description = "DAYTONA_SERVER_URL"
  type        = string
}