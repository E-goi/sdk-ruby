# EgoiRubyClient::NumericCellphoneSenderPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Sender code type |  |
| **cellphone** | **String** | Sender cellphone (country code followed by phone number, split by &#39;-&#39;) |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::NumericCellphoneSenderPost.new(
  type: null,
  cellphone: 351-300404336
)
```

