variable "optimizer_recommendations" {
  description = <<EOT
Map of optimizer_recommendations, attributes below
Required:
    - recommendation_id
    - status
Optional:
    - time_status_end
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    recommendation_id = string
    status            = string
    time_status_end   = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

