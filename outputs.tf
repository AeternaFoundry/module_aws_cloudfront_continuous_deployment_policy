output "cloudfront_continuous_deployment_policies_id" {
  description = "Map of id values across all cloudfront_continuous_deployment_policies, keyed the same as var.cloudfront_continuous_deployment_policies"
  value       = { for k, v in aws_cloudfront_continuous_deployment_policy.cloudfront_continuous_deployment_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfront_continuous_deployment_policies_arn" {
  description = "Map of arn values across all cloudfront_continuous_deployment_policies, keyed the same as var.cloudfront_continuous_deployment_policies"
  value       = { for k, v in aws_cloudfront_continuous_deployment_policy.cloudfront_continuous_deployment_policies : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudfront_continuous_deployment_policies_enabled" {
  description = "Map of enabled values across all cloudfront_continuous_deployment_policies, keyed the same as var.cloudfront_continuous_deployment_policies"
  value       = { for k, v in aws_cloudfront_continuous_deployment_policy.cloudfront_continuous_deployment_policies : k => v.enabled if v.enabled != null }
}
output "cloudfront_continuous_deployment_policies_etag" {
  description = "Map of etag values across all cloudfront_continuous_deployment_policies, keyed the same as var.cloudfront_continuous_deployment_policies"
  value       = { for k, v in aws_cloudfront_continuous_deployment_policy.cloudfront_continuous_deployment_policies : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "cloudfront_continuous_deployment_policies_last_modified_time" {
  description = "Map of last_modified_time values across all cloudfront_continuous_deployment_policies, keyed the same as var.cloudfront_continuous_deployment_policies"
  value       = { for k, v in aws_cloudfront_continuous_deployment_policy.cloudfront_continuous_deployment_policies : k => v.last_modified_time if v.last_modified_time != null && length(v.last_modified_time) > 0 }
}
output "cloudfront_continuous_deployment_policies_staging_distribution_dns_names" {
  description = "Map of staging_distribution_dns_names values across all cloudfront_continuous_deployment_policies, keyed the same as var.cloudfront_continuous_deployment_policies"
  value       = { for k, v in aws_cloudfront_continuous_deployment_policy.cloudfront_continuous_deployment_policies : k => v.staging_distribution_dns_names if v.staging_distribution_dns_names != null && length(v.staging_distribution_dns_names) > 0 }
}
output "cloudfront_continuous_deployment_policies_traffic_config" {
  description = "Map of traffic_config values across all cloudfront_continuous_deployment_policies, keyed the same as var.cloudfront_continuous_deployment_policies"
  value       = { for k, v in aws_cloudfront_continuous_deployment_policy.cloudfront_continuous_deployment_policies : k => v.traffic_config if v.traffic_config != null && length(v.traffic_config) > 0 }
}

