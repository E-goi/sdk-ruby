# EgoiRubyClient::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **Integer** |  | [optional][readonly] |
| **list_id** | **Integer** |  |  |
| **url** | **String** | Url to send the webhook &lt;a href&#x3D;&#39;/usecases/webhooks/&#39; target&#x3D;&#39;_blank&#39;&gt;[Go to webhooks documentation]&lt;/a&gt;:  *       Note: Only &#39;http&#39; or &#39;https&#39; protocols are supported. |  |
| **actions** | [**Array&lt;WebhookActionSchema&gt;**](WebhookActionSchema.md) | Action that will trigger the webhook |  |
| **fields** | **Array&lt;String&gt;** | Array of contact field IDs to be displayed in the webhook | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Webhook.new(
  webhook_id: 1,
  list_id: 1,
  url: null,
  actions: null,
  fields: null
)
```

