resource "aws_sns_topic_subscription" "subscription" {
  endpoint = var.endpoint
  protocol = var.protocol
  topic_arn = var.sns_topic_arn
  raw_message_delivery = var.raw_message_delivery
}

resource "aws_sqs_queue_policy" "sns_to_sqs" {
  count = var.protocol == "sqs" ? 1 : 0
  queue_url = var.sqs_endpoint_url
  policy = jsonencode({
    Version = "2012-10-17"
    Id = "allow_sns_publish"
    Statement = [{
      Sid = "1"
      Effect = "Allow"
      Principal = {
        Service = "sns.amazonaws.com"
      }
      Action   = "sqs:SendMessage"
      Resource = var.endpoint
      Condition = {
        ArnEquals = {
          "aws:SourceArn" = var.sns_topic_arn
        }
      }
    }]
  })
}
