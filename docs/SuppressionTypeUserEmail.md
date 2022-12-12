# EgoiRubyClient::SuppressionTypeUserEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Suppression type |  |
| **value** | **Array&lt;String&gt;** | Array of email user values to add to the suppression list |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionTypeUserEmail.new(
  type: email_user,
  value: null
)
```

