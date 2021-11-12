locals {
  topic_name = "${var.name}-${var.env}${var.fifo_topic ? ".fifo" : ""}"
}

resource "aws_sns_topic" "sns_topic" {
  name = local.topic_name
  tags = var.tags
  fifo_topic = var.fifo_topic
}