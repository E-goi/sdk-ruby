# EgoiRubyClient::CNamesCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Total number of cnames returned | [optional] |
| **items** | [**Array&lt;CName&gt;**](CName.md) | Returned cnames | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CNamesCollection.new(
  total_items: 1,
  items: null
)
```

