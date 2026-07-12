output "dynatrace_tag_rules_id" {
  description = "Map of id values across all dynatrace_tag_rules, keyed the same as var.dynatrace_tag_rules"
  value       = { for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_rules : k => v.id }
}
output "dynatrace_tag_rules_log_rule" {
  description = "Map of log_rule values across all dynatrace_tag_rules, keyed the same as var.dynatrace_tag_rules"
  value       = { for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_rules : k => v.log_rule }
}
output "dynatrace_tag_rules_metric_rule" {
  description = "Map of metric_rule values across all dynatrace_tag_rules, keyed the same as var.dynatrace_tag_rules"
  value       = { for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_rules : k => v.metric_rule }
}
output "dynatrace_tag_rules_monitor_id" {
  description = "Map of monitor_id values across all dynatrace_tag_rules, keyed the same as var.dynatrace_tag_rules"
  value       = { for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_rules : k => v.monitor_id }
}
output "dynatrace_tag_rules_name" {
  description = "Map of name values across all dynatrace_tag_rules, keyed the same as var.dynatrace_tag_rules"
  value       = { for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_rules : k => v.name }
}

