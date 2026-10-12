variable "account_roles_lookup" {
  description = <<EOT
Map of account_roles_lookup, attributes below
Optional:
    - in_class
    - like
EOT

  type = map(object({
    in_class = optional(string)
    like     = optional(string)
  }))
}

