variable "pm_api_url" {
  description = "Proxmox API endpoint, e.g. https://proxmox.example:8006/api2/json"
  type        = string
}

variable "pm_user" {
  description = "Proxmox user including realm, e.g. root@pam"
  type        = string
}

variable "pm_password" {
  description = "Password for the Proxmox user"
  type        = string
  sensitive   = true
}

variable "pm_tls_insecure" {
  description = "Skip TLS verification for the Proxmox API"
  type        = bool
  default     = true
}
