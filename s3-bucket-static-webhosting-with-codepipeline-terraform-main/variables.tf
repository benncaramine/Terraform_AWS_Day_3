variable "access_key" {
  description = "access key"
  default = "AKIAQTV6VQ77ZMRE4CRR"
}

variable "secret_key" {
  description = "secret key"
  default = "j/GUfpB2XXwF4M7z/Iyq7HFYAOsNrvV+YxaHK3o8"
}

variable "pipeline_bucket_name" {
  default     = "test-678767876"
  description = "pipeline bucket name"
}

variable "app_bucket_name" {
  default     = "easydeploy-test-987689876"
  description = "app bucket name"
}

variable "projectname" {
  default     = "easydeploy"
  description = "pipeline project name"
}

variable "repo_id" {
  default     = "benncaramine/ReactJs_App_S3_WebHosting"
  description = "github repository id"
}

variable "repo_branch_name" {
  default     = "main"
  description = "github branch name"
}

variable "connection_arn" {
  type        = string
  description = "Arn for the CodeStar Connection"
  default = "arn:aws:codestar-connections:us-east-1:042275801087:connection/be6adc04-10df-41a1-b5e7-1d09fd61f27b"
}