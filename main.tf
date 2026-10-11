data "cloudflare_content_scanning" "content_scanning_lookup" {
  for_each = var.content_scanning_lookup

  zone_id = each.value.zone_id
}

