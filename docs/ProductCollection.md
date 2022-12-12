# EgoiRubyClient::ProductCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Total of returned products | [optional] |
| **items** | [**Array&lt;Product&gt;**](Product.md) | List of products | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ProductCollection.new(
  total_items: 1,
  items: null
)
```

