# EgoiRubyClient::TagCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned tags | [optional] |
| **items** | [**Array&lt;Tag&gt;**](Tag.md) | Returned tags | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::TagCollection.new(
  total_items: 1,
  items: null
)
```

