variable "dynatrace_tag_ruleses" {
  description = <<EOT
Map of dynatrace_tag_ruleses, attributes below
Required:
    - monitor_id
    - name
Optional:
    - log_rule (block):
        - filtering_tag (optional, block):
            - action (required)
            - name (required)
            - value (required)
        - send_activity_logs_enabled (optional)
        - send_azure_active_directory_logs_enabled (optional)
        - send_subscription_logs_enabled (optional)
    - metric_rule (block):
        - filtering_tag (optional, block):
            - action (required)
            - name (required)
            - value (required)
        - sending_metrics_enabled (optional)
EOT

  type = map(object({
    monitor_id = string
    name       = string
    log_rule = optional(object({
      filtering_tag = optional(object({
        action = string
        name   = string
        value  = string
      }))
      send_activity_logs_enabled               = optional(bool) # Default: false
      send_azure_active_directory_logs_enabled = optional(bool) # Default: false
      send_subscription_logs_enabled           = optional(bool) # Default: false
    }))
    metric_rule = optional(object({
      filtering_tag = optional(object({
        action = string
        name   = string
        value  = string
      }))
      sending_metrics_enabled = optional(bool) # Default: false
    }))
  }))
}

