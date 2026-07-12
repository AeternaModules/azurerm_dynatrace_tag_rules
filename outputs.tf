output "dynatrace_tag_ruleses_log_rule" {
  description = "Map of log_rule values across all dynatrace_tag_ruleses, keyed the same as var.dynatrace_tag_ruleses"
  value       = { for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_ruleses : k => v.log_rule }
}
output "dynatrace_tag_ruleses_metric_rule" {
  description = "Map of metric_rule values across all dynatrace_tag_ruleses, keyed the same as var.dynatrace_tag_ruleses"
  value       = { for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_ruleses : k => v.metric_rule }
}
output "dynatrace_tag_ruleses_monitor_id" {
  description = "Map of monitor_id values across all dynatrace_tag_ruleses, keyed the same as var.dynatrace_tag_ruleses"
  value       = { for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_ruleses : k => v.monitor_id }
}
output "dynatrace_tag_ruleses_name" {
  description = "Map of name values across all dynatrace_tag_ruleses, keyed the same as var.dynatrace_tag_ruleses"
  value       = { for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_ruleses : k => v.name }
}

