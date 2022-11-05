variable "sns_topic_arn" {
  type = string
}

variable "protocol" {
  default = "sqs"
  type = string
}

variable "endpoint" {
  type = string
}

variable "raw_message_delivery" {
  type = bool
  default = true
}

variable sqs_endpoint_url {
  type = string
  default = null
  description = "Provide to create a default policy for SNS to write to SQS"
}

variable "filter_policy" {
  type = string
  default = null
  description = "See SNS docs for valid JSON"
}