# EgoiRubyClient::SuppressionTypeCellphoneAllOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Array&lt;String&gt;** | Array of cellphone values to add to the suppression list (country code followed by phone number, split by &#39;-&#39;) | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SuppressionTypeCellphoneAllOf1.new(
  value: null
)
```

