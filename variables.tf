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