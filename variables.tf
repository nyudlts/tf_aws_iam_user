// Module specific variables
variable "name" {
  description = "The name of the user you want to create"
}

variable "path" {
  description = "Path in which to create the user"
  default     = "/"
}

variable "force_destroy" {
  description = "Path in which to create the user"
  default     = true
}

variable "permissions_boundary" {
  description = "Path in which to create the user"
  default     = ""
}

variable "pgp_key" {
  description = "A keybase user name in the form keybase:username, or a base 64 encoded PG public key, used to encrypt the password and access key"
  default     = ""
}
