# Terraform SNS

This module provides helpers for easily creating SNS topics and subscriptions.

## New SNS Topic

```terraform
module "order_status" {
  source = "../../modules/sns_topic"
  name = "order_status"
  env = var.env
  tags = local.tags
  fifo_topic = true
}
```

## Topic Subscriptions

See the `sns_subsciption` submodule.

```terraform
```