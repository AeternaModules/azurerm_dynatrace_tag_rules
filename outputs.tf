output "dynatrace_tag_ruleses" {
  description = "All dynatrace_tag_rules resources"
  value       = azurerm_dynatrace_tag_rules.dynatrace_tag_ruleses
}
output "dynatrace_tag_ruleses_log_rule" {
  description = "List of log_rule values across all dynatrace_tag_ruleses"
  value       = [for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_ruleses : v.log_rule]
}
output "dynatrace_tag_ruleses_metric_rule" {
  description = "List of metric_rule values across all dynatrace_tag_ruleses"
  value       = [for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_ruleses : v.metric_rule]
}
output "dynatrace_tag_ruleses_monitor_id" {
  description = "List of monitor_id values across all dynatrace_tag_ruleses"
  value       = [for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_ruleses : v.monitor_id]
}
output "dynatrace_tag_ruleses_name" {
  description = "List of name values across all dynatrace_tag_ruleses"
  value       = [for k, v in azurerm_dynatrace_tag_rules.dynatrace_tag_ruleses : v.name]
}

