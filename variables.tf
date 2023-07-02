variable "GOOGLE_REGION" {
  type        = string
  description = "Google region name to use"
}
variable "GOOGLE_PROJECT" {
  type        = string
  description = "Google project id value to use"
}
variable "GKE_NUM_NODES" {
  type        = number
  description = "Number of nodes to use"
}

variable "GITHUB_OWNER" {
  type        = string
  description = "GitHub owner repository to use"
}

variable "GITHUB_TOKEN" {
  type        = string
  description = "GitHub personal access token"
}

variable "FLUX_GITHUB_REPO" {
  type        = string
  default     = "flux-gitops"
  description = "Flux GitOps repository"
}

variable "FLUX_GITHUB_TARGET_PATH" {
  type        = string
  default     = "clusters"
  description = "Flux manifests subdirectory"
}

# variable "github_owner" {
#   type        = string
#   description = "The GitHub owner"
# }

# variable "github_token" {
#   type        = string
#   description = "GitHub personal access token"
# }
