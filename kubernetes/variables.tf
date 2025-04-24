variable "project" {
    type = string
    description = "Application Name"
}

variable "region" {
    type = string
    description = "The AWS Regions."
}

variable "container" {
    type = string
    description = "The Docker Container to Deploy."
}

variable "environment" {
  description = "Deployment environment (e.g. dev, prod)"
  type        = string
}