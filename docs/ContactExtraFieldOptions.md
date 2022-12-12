# EgoiRubyClient::ContactExtraFieldOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **Integer** |  | [optional] |
| **format** | **String** | Extra field format | [optional][readonly] |
| **value** | **Array&lt;Integer&gt;** | Extra field value | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactExtraFieldOptions.new(
  field_id: 1,
  format: null,
  value: [1,2]
)
```

