variable "project" {
    type = string
    description = "Application Name"
}

variable "region" {
    type = string
    description = "The AWS Regions."
}

variable "environment" {
  description = "Deployment environment (e.g. dev, prod)"
  type        = string
}