variable "url" {
  type        = string
  description = "Provider URL"
}

variable "client_ids" {
  type        = list(string)
  description = "The list of audiences/client IDs"
}

variable "extra_thumbprints" {
  type        = list(string)
  description = "The list of extra thumbprints for the URL"
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "A mapping of resource tags."
  default     = {}
}
