variable "cloudfront_continuous_deployment_policies" {
  description = <<EOT
Map of cloudfront_continuous_deployment_policies, attributes below
Required:
    - enabled
Optional:
    - staging_distribution_dns_names (block):
        - items (optional)
        - quantity (required)
    - traffic_config (block):
        - single_header_config (optional, block):
            - header (required)
            - value (required)
        - single_weight_config (optional, block):
            - session_stickiness_config (optional, block):
                - idle_ttl (required)
                - maximum_ttl (required)
            - weight (required)
        - type (required)
EOT

  type = map(object({
    enabled = bool
    staging_distribution_dns_names = optional(list(object({
      items    = optional(set(string))
      quantity = number
    })))
    traffic_config = optional(list(object({
      single_header_config = optional(list(object({
        header = string
        value  = string
      })))
      single_weight_config = optional(list(object({
        session_stickiness_config = optional(list(object({
          idle_ttl    = number
          maximum_ttl = number
        })))
        weight = number
      })))
      type = string
    })))
  }))
}

