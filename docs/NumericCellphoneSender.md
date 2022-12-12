# EgoiRubyClient::NumericCellphoneSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cellphone** | **String** | Sender cellphone (country code followed by phone number, split by &#39;-&#39;) |  |
| **type** | **String** | Sender code type |  |
| **sender_id** | **Integer** |  | [readonly] |
| **status** | **String** | Status of the sender | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::NumericCellphoneSender.new(
  cellphone: 351-300404336,
  type: null,
  sender_id: 1,
  status: moderation
)
```

