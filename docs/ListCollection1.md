# EgoiRubyClient::ListCollection1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned webhooks | [optional] |
| **items** | [**Array&lt;Webhook&gt;**](Webhook.md) | Returned webhooks | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ListCollection1.new(
  total_items: 1,
  items: null
)
```

