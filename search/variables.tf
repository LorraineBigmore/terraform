variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
}

variable "location" {
  description = "Location for the Azure resources"
  type        = string
  default     = "UK South"
}

//variable "search_service_name" {
//  description = "Name of the Azure Cognitive Search service"
//  type        = string
//}

variable "search_service_sku" {
  description = "SKU of the Azure Cognitive Search service"
  type        = string
  default     = "basic"
}

variable "partition_count" {
  description = "Number of partitions"
  type        = number
  default     = 1
}

variable "replica_count" {
  description = "Number of replicas"
  type        = number
  default     = 1
}
