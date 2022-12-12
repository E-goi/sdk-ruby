# EgoiRubyClient::ProductCustomAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | Custom attribute key (lower case without spaces) | [optional] |
| **value** | **String** | Custom attribute value | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ProductCustomAttributes.new(
  _alias: sale_price_5,
  value: 15.45
)
```

