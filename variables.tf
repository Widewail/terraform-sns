variable "name" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "env" {
  type = string
}

variable "fifo_topic" {
  type = bool
  default = false
}

variable "content_based_deduplication" {
  type = bool
  default = false
  description = "Enable content based deduplication"
}