# EgoiRubyClient::ContactExtraFieldCellphone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **Integer** |  | [optional] |
| **format** | **String** | Extra field format | [optional][readonly] |
| **value** | **String** | Cellphone  value (country code followed by phone number, split by &#39;-&#39;) | [optional] |
| **status** | **String** | Extra field status | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactExtraFieldCellphone.new(
  field_id: 1,
  format: null,
  value: 351-300404336,
  status: null
)
```

