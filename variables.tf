variable "dataplex_aspect_type_iam_members" {
  description = <<EOT
Map of dataplex_aspect_type_iam_members, attributes below
Required:
    - aspect_type_id
    - member
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    aspect_type_id = string
    member         = string
    role           = string
    location       = optional(string)
    project        = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

