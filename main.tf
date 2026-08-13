resource "aws_vpclattice_target_group_attachment" "vpclattice_target_group_attachments" {
  for_each = var.vpclattice_target_group_attachments

  target_group_identifier = each.value.target_group_identifier
  region                  = each.value.region

  target {
    id   = each.value.target.id
    port = each.value.target.port
  }
}

