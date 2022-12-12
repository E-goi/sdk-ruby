# EgoiRubyClient::ContactExtraFieldCellphoneBulk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **Integer** |  | [optional] |
| **format** | **String** | Extra field format | [optional][readonly] |
| **value** | **String** | Extra field value | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactExtraFieldCellphoneBulk.new(
  field_id: 1,
  format: null,
  value: null
)
```

