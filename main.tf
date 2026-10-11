resource "google_dataplex_aspect_type_iam_member" "dataplex_aspect_type_iam_members" {
  for_each = var.dataplex_aspect_type_iam_members

  aspect_type_id = each.value.aspect_type_id
  member         = each.value.member
  role           = each.value.role
  location       = each.value.location
  project        = each.value.project

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

