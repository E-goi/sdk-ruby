# EgoiRubyClient::OperationsCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Total amount of operations in queue | [optional] |
| **items** | [**Array&lt;Operation&gt;**](Operation.md) | Operations in queue | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::OperationsCollection.new(
  total_items: 1,
  items: null
)
```

