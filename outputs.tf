output "account_roles_lookup_id" {
  description = "Map of id values across all account_roles_lookup, keyed the same as var.account_roles_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_account_roles.account_roles_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "account_roles_lookup_account_roles" {
  description = "Map of account_roles values across all account_roles_lookup, keyed the same as var.account_roles_lookup except keys with no account_roles are omitted"
  value       = { for k, v in data.snowflake_account_roles.account_roles_lookup : k => v.account_roles if v.account_roles != null && length(v.account_roles) > 0 }
}
output "account_roles_lookup_in_class" {
  description = "Map of in_class values across all account_roles_lookup, keyed the same as var.account_roles_lookup except keys with no in_class are omitted"
  value       = { for k, v in data.snowflake_account_roles.account_roles_lookup : k => v.in_class if v.in_class != null && length(v.in_class) > 0 }
}
output "account_roles_lookup_like" {
  description = "Map of like values across all account_roles_lookup, keyed the same as var.account_roles_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_account_roles.account_roles_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}

