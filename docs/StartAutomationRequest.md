# EgoiRubyClient::StartAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **Integer** |  |  |
| **action_id** | **Integer** |  |  |
| **contacts** | **Array&lt;String&gt;** | Array of contact IDs to start automation |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::StartAutomationRequest.new(
  automation_id: 1,
  action_id: 1,
  contacts: null
)
```

