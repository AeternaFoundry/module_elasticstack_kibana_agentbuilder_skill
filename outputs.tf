output "kibana_agentbuilder_skills_id" {
  description = "Map of id values across all kibana_agentbuilder_skills, keyed the same as var.kibana_agentbuilder_skills except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_skill.kibana_agentbuilder_skills : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_agentbuilder_skills_content" {
  description = "Map of content values across all kibana_agentbuilder_skills, keyed the same as var.kibana_agentbuilder_skills except keys with no content are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_skill.kibana_agentbuilder_skills : k => v.content if v.content != null && length(v.content) > 0 }
}
output "kibana_agentbuilder_skills_description" {
  description = "Map of description values across all kibana_agentbuilder_skills, keyed the same as var.kibana_agentbuilder_skills except keys with no description are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_skill.kibana_agentbuilder_skills : k => v.description if v.description != null && length(v.description) > 0 }
}
output "kibana_agentbuilder_skills_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_agentbuilder_skills, keyed the same as var.kibana_agentbuilder_skills except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_skill.kibana_agentbuilder_skills : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_agentbuilder_skills_name" {
  description = "Map of name values across all kibana_agentbuilder_skills, keyed the same as var.kibana_agentbuilder_skills except keys with no name are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_skill.kibana_agentbuilder_skills : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kibana_agentbuilder_skills_referenced_content" {
  description = "Map of referenced_content values across all kibana_agentbuilder_skills, keyed the same as var.kibana_agentbuilder_skills except keys with no referenced_content are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_skill.kibana_agentbuilder_skills : k => v.referenced_content if v.referenced_content != null && length(v.referenced_content) > 0 }
}
output "kibana_agentbuilder_skills_skill_id" {
  description = "Map of skill_id values across all kibana_agentbuilder_skills, keyed the same as var.kibana_agentbuilder_skills except keys with no skill_id are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_skill.kibana_agentbuilder_skills : k => v.skill_id if v.skill_id != null && length(v.skill_id) > 0 }
}
output "kibana_agentbuilder_skills_space_id" {
  description = "Map of space_id values across all kibana_agentbuilder_skills, keyed the same as var.kibana_agentbuilder_skills except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_skill.kibana_agentbuilder_skills : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_agentbuilder_skills_tool_ids" {
  description = "Map of tool_ids values across all kibana_agentbuilder_skills, keyed the same as var.kibana_agentbuilder_skills except keys with no tool_ids are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_skill.kibana_agentbuilder_skills : k => v.tool_ids if v.tool_ids != null && length(v.tool_ids) > 0 }
}

