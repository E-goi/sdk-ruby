# EgoiRubyClient::ListCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned lists | [optional] |
| **items** | **Array&lt;Array&gt;** | Returned lists | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ListCollection.new(
  total_items: 1,
  items: null
)
```

