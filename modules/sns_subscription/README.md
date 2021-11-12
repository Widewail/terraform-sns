Helper to create SNS subsdcriptions. If creating an SQS subscription the module
will automatically create the required IAM policy so SNS can write to the queue.

If creating an SQS subscription both the queue ARN and URL are required.

```terraform
module "my_sub" {
  source = "../../modules/sns_subscription"
  endpoint = var.my_sqs_queue_arn
  sqs_endpoint_url = var.my_sqs_queue_url
  sns_topic_arn = var.my_sns_topic_arn
}
```