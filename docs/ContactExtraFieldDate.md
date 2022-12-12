# EgoiRubyClient::ContactExtraFieldDate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **Integer** |  | [optional] |
| **format** | **String** | Extra field format | [optional][readonly] |
| **value** | **Date** | Extra field value | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactExtraFieldDate.new(
  field_id: 1,
  format: null,
  value: Tue Jan 01 00:00:00 WET 2019
)
```

