# EgoiRubyClient::CountryCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned countries | [optional] |
| **items** | [**Array&lt;Country&gt;**](Country.md) | Returned countries | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CountryCollection.new(
  total_items: 1,
  items: null
)
```

