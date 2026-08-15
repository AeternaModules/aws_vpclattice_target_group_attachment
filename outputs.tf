output "vpclattice_target_group_attachments_id" {
  description = "Map of id values across all vpclattice_target_group_attachments, keyed the same as var.vpclattice_target_group_attachments"
  value       = { for k, v in aws_vpclattice_target_group_attachment.vpclattice_target_group_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpclattice_target_group_attachments_region" {
  description = "Map of region values across all vpclattice_target_group_attachments, keyed the same as var.vpclattice_target_group_attachments"
  value       = { for k, v in aws_vpclattice_target_group_attachment.vpclattice_target_group_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpclattice_target_group_attachments_target" {
  description = "Map of target values across all vpclattice_target_group_attachments, keyed the same as var.vpclattice_target_group_attachments"
  value       = { for k, v in aws_vpclattice_target_group_attachment.vpclattice_target_group_attachments : k => one(v.target) if v.target != null && length(v.target) > 0 }
}
output "vpclattice_target_group_attachments_target_group_identifier" {
  description = "Map of target_group_identifier values across all vpclattice_target_group_attachments, keyed the same as var.vpclattice_target_group_attachments"
  value       = { for k, v in aws_vpclattice_target_group_attachment.vpclattice_target_group_attachments : k => v.target_group_identifier if v.target_group_identifier != null && length(v.target_group_identifier) > 0 }
}

