variable "instance_zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.instance_zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  sensitive = true
  nullable = false
} 
variable "preemptible" {
  default     = "true"
  type        = bool
  description = "scheduling_policy"
}
variable "nat" {
  default     = "false"
  type        = bool
  description = "nat"
}
variable "platform_id" {
  default     = "standard-v1"
  type        = string
  description = "platform_id"
}   