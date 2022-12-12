# EgoiRubyClient::SuppressionTypeCellphone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Suppression type |  |
| **value** | **Array&lt;String&gt;** | Array of cellphone values to add to the suppression list |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionTypeCellphone.new(
  type: cellphone,
  value: null
)
```

