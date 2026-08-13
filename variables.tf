variable "vpclattice_target_group_attachments" {
  description = <<EOT
Map of vpclattice_target_group_attachments, attributes below
Required:
    - target_group_identifier
    - target (block):
        - id (required)
        - port (optional)
Optional:
    - region
EOT

  type = map(object({
    target_group_identifier = string
    region                  = optional(string)
    target = object({
      id   = string
      port = optional(number)
    })
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

