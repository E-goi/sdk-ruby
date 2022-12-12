# EgoiRubyClient::SendSmsAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_field** | **String** | SMS campaign destination field. Must be &#39;cellphone&#39; or the other field ID of type                                 cellphone | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SendSmsAllOf.new(
  destination_field: cellphone
)
```

