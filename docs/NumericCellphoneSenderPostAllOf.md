# EgoiRubyClient::NumericCellphoneSenderPostAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cellphone** | **String** | Sender cellphone (country code followed by phone number, split by &#39;-&#39;) | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::NumericCellphoneSenderPostAllOf.new(
  cellphone: 351-300404336
)
```

