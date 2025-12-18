terraform {
  cloud {
    organization = "mia-platform"
    workspaces {
      name = "terraform-demo-18-dec"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "postgresql-18-dec" {
  source = "git::https://github.com/Mia-Platform-Experiments/tf-azure-postgresql.git"

  service_name = var.postgresql-18-dec_service_name
  resource_group_name = var.postgresql-18-dec_resource_group_name
  location = var.postgresql-18-dec_location
  performance_profile = var.postgresql-18-dec_performance_profile
  postgres_version = var.postgresql-18-dec_postgres_version
  database_name = var.postgresql-18-dec_database_name
  administrator_login = var.postgresql-18-dec_administrator_login
  administrator_password = var.postgresql-18-dec_administrator_password
}

module "storage-account-18-dec" {
  source = "git::https://github.com/Mia-Platform-Experiments/tf-azure-storage.git"

  service_name = var.storage-account-18-dec_service_name
  resource_group_name = var.storage-account-18-dec_resource_group_name
  location = var.storage-account-18-dec_location
  performance_profile = var.storage-account-18-dec_performance_profile
  container_names = var.storage-account-18-dec_container_names
  access_tier = var.storage-account-18-dec_access_tier
}

module "service-bus-18-dec" {
  source = "git::https://github.com/Mia-Platform-Experiments/tf-azure-servicebus.git"

  service_name = var.service-bus-18-dec_service_name
  resource_group_name = var.service-bus-18-dec_resource_group_name
  location = var.service-bus-18-dec_location
  performance_profile = var.service-bus-18-dec_performance_profile
  queue_names = var.service-bus-18-dec_queue_names
}

module "app-service-18-dec" {
  source = "git::https://github.com/Mia-Platform-Experiments/tf-azure-app-service.git"

  service_name = var.app-service-18-dec_service_name
  deployed_service = var.app-service-18-dec_deployed_service
  resource_group_name = var.app-service-18-dec_resource_group_name
  location = var.app-service-18-dec_location
  performance_profile = var.app-service-18-dec_performance_profile
  tech_stack = var.app-service-18-dec_tech_stack
}
