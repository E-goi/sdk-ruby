# EgoiRubyClient::SuppressionTypePhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Suppression type |  |
| **value** | **Array&lt;String&gt;** | Array of phone values to add to the suppression list |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionTypePhone.new(
  type: phone,
  value: null
)
```

