# EgoiRubyClient::SuppressionTypePhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Suppression type |  |
| **value** | **Array&lt;String&gt;** | Array of phone values to add to the suppression list (country code followed by phone number, split by &#39;-&#39;) |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionTypePhone.new(
  type: phone,
  value: null
)
```

