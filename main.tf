resource "elasticstack_kibana_agentbuilder_skill" "kibana_agentbuilder_skills" {
  for_each = var.kibana_agentbuilder_skills

  content            = each.value.content
  description        = each.value.description
  name               = each.value.name
  skill_id           = each.value.skill_id
  referenced_content = each.value.referenced_content
  space_id           = each.value.space_id
  timeouts           = each.value.timeouts
  tool_ids           = each.value.tool_ids

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

