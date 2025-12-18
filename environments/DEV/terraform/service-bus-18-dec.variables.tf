variable "service-bus-18-dec__module_source" {
  default = "git::https://github.com/Mia-Platform-Experiments/tf-azure-servicebus.git"
}

variable "service-bus-18-dec_service_name" {
  description = "The name of the service (e.g., payment-service). Used for resource naming. Note: Service Bus namespace names must be globally unique in Azure."
  type        = string
  default     = "service-bus-18-dec"
}

variable "service-bus-18-dec_resource_group_name" {
  description = "The name of the existing Resource Group in Azure."
  type        = string
  default     = "terraform-demo"
}

variable "service-bus-18-dec_location" {
  description = "The Azure region to deploy to."
  type        = string
  default     = "North Europe"
}

variable "service-bus-18-dec_performance_profile" {
  description = "The performance tier selected by the developer (sandbox, development, production)."
  type        = string
  default     = "sandbox"

  validation {
    condition     = contains(["sandbox", "development", "production"], var.service-bus-18-dec_performance_profile)
    error_message = "Performance profile must be one of: sandbox, development, production."
  }
}

variable "service-bus-18-dec_queue_names" {
  description = "List of Service Bus queue names to create."
  type        = list(string)
  default     = [
  "18-dec-queue"
]
}