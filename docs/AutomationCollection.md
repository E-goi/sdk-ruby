# EgoiRubyClient::AutomationCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned automations | [optional] |
| **items** | [**Array&lt;Automation&gt;**](Automation.md) | Returned automations | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AutomationCollection.new(
  total_items: 1,
  items: null
)
```

