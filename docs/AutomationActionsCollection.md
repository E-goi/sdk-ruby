# EgoiRubyClient::AutomationActionsCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned actions count | [optional] |
| **items** | [**Array&lt;AutomationActions&gt;**](AutomationActions.md) | Returned actions | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AutomationActionsCollection.new(
  total_items: 1,
  items: null
)
```

