# EgoiRubyClient::SuppressionTypeEmailDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Suppression type |  |
| **value** | **Array&lt;String&gt;** | Array of email domain values to add to the suppression list |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionTypeEmailDomain.new(
  type: email_domain,
  value: null
)
```

