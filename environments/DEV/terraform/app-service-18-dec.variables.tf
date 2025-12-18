variable "app-service-18-dec__module_source" {
  default = "git::https://github.com/Mia-Platform-Experiments/tf-azure-app-service.git"
}

variable "app-service-18-dec_service_name" {
  description = "The name of the service (e.g., payment-service). Used for resource naming."
  type        = string
  default     = "app-service-18-dec"
}

variable "app-service-18-dec_deployed_service" {
  description = "Service to be deployed (e.g., 'service-hello-world')"
  type        = string
  default     = "azure-app-18-dec"
}

variable "app-service-18-dec_resource_group_name" {
  description = "The name of the existing Resource Group in Azure."
  type        = string
  default     = "terraform-demo"
}

variable "app-service-18-dec_location" {
  description = "The Azure region to deploy to."
  type        = string
  default     = "North Europe"
}

variable "app-service-18-dec_performance_profile" {
  description = "The performance tier selected by the developer (sandbox, development, production)."
  type        = string
  default     = "sandbox"

  validation {
    condition     = contains(["sandbox", "development", "production"], var.app-service-18-dec_performance_profile)
    error_message = "Performance profile must be one of: sandbox, development, production."
  }
}

variable "app-service-18-dec_tech_stack" {
  description = "The runtime stack for the application."
  type        = string
  default     = "Python 3.10"
}