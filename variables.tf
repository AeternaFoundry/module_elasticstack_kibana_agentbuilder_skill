variable "kibana_agentbuilder_skills" {
  description = <<EOT
Map of kibana_agentbuilder_skills, attributes below
Required:
    - content
    - description
    - name
    - skill_id
Optional:
    - referenced_content
    - space_id
    - timeouts
    - tool_ids
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    content     = string
    description = string
    name        = string
    skill_id    = string
    referenced_content = optional(list(object({
      content       = string
      name          = string
      relative_path = string
    })))
    space_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    tool_ids = optional(set(string))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

