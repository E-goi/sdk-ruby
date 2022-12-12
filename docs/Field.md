# EgoiRubyClient::Field

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | Field ID | [optional][readonly] |
| **name** | **String** | Name of the field |  |
| **format** | **String** | Field format |  |
| **unique** | **Boolean** | True if the field is unique, false otherwise | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Field.new(
  field_id: null,
  name: null,
  format: null,
  unique: null
)
```

