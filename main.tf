data "snowflake_account_roles" "account_roles_lookup" {
  for_each = var.account_roles_lookup

  in_class = each.value.in_class
  like     = each.value.like
}

