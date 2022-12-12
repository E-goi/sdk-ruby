# EgoiRubyClient::GoalCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned goals | [optional] |
| **items** | [**Array&lt;Goal&gt;**](Goal.md) | Returned goals | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::GoalCollection.new(
  total_items: 1,
  items: null
)
```

