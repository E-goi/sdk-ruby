# EgoiRubyClient::SuppressionListItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Total of suppressed items | [optional] |
| **items** | [**Array&lt;SuppressionList&gt;**](SuppressionList.md) | Returned suppression list | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionListItems.new(
  total_items: 1,
  items: null
)
```

