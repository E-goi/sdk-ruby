# EgoiRubyClient::UniqueFieldInUseErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unique_field_in_use** | **String** | Occurs when a provided field is already in use | [optional] |
| **field_id** | **String** | Field ID | [optional] |
| **contacts** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::UniqueFieldInUseErrors.new(
  unique_field_in_use: null,
  field_id: null,
  contacts: null
)
```

