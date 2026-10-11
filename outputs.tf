output "content_scanning_lookup_modified" {
  description = "Map of modified values across all content_scanning_lookup, keyed the same as var.content_scanning_lookup except keys with no modified are omitted"
  value       = { for k, v in data.cloudflare_content_scanning.content_scanning_lookup : k => v.modified if v.modified != null && length(v.modified) > 0 }
}
output "content_scanning_lookup_value" {
  description = "Map of value values across all content_scanning_lookup, keyed the same as var.content_scanning_lookup except keys with no value are omitted"
  value       = { for k, v in data.cloudflare_content_scanning.content_scanning_lookup : k => v.value if v.value != null && length(v.value) > 0 }
}
output "content_scanning_lookup_zone_id" {
  description = "Map of zone_id values across all content_scanning_lookup, keyed the same as var.content_scanning_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_content_scanning.content_scanning_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

