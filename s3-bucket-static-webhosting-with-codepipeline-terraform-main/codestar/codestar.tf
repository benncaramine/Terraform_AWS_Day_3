variable "access_key" {
  description = "access key"
  default = "AKIAQTV6VQ77ZMRE4CRR"
}

variable "secret_key" {
  description = "secret key"
  default = "j/GUfpB2XXwF4M7z/Iyq7HFYAOsNrvV+YxaHK3o8"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_codestarconnections_connection" "easydeploy_github" {
  name          = "pipeline automation"
  provider_type = "GitHub"
  tags = {
    Name = "Amine-Pipeline"
  }
}
