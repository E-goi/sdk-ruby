# EgoiRubyClient::SuppressionTypeCellphone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Suppression type |  |
| **value** | **Array&lt;String&gt;** | Array of cellphone values to add to the suppression list (country code followed by phone number, split by &#39;-&#39;) |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionTypeCellphone.new(
  type: cellphone,
  value: null
)
```

