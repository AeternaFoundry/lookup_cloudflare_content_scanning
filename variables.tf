variable "content_scanning_lookup" {
  description = <<EOT
Map of content_scanning_lookup, attributes below
Optional:
    - zone_id
EOT

  type = map(object({
    zone_id = optional(string)
  }))
}

