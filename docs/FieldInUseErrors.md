# EgoiRubyClient::FieldInUseErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_in_use** | **String** | Occurs when a field is in use | [optional] |
| **field_in_use_data** | [**FieldInUseErrorsFieldInUseData**](FieldInUseErrorsFieldInUseData.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::FieldInUseErrors.new(
  field_in_use: null,
  field_in_use_data: null
)
```

