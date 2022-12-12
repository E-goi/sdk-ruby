# EgoiRubyClient::SuppressionTypeEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Suppression type |  |
| **value** | **Array&lt;String&gt;** | Array of email values to add to the suppression list |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionTypeEmail.new(
  type: email,
  value: null
)
```

