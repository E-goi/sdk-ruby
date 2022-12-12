# EgoiRubyClient::SendSmartSmsAllOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_field** | **String** | Smart SMS campaign destination field. Must be &#39;cellphone&#39; or the other field ID of type                                 cellphone | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SendSmartSmsAllOf1.new(
  destination_field: cellphone
)
```

