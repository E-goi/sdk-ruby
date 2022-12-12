# EgoiRubyClient::AlphanumericCellphoneSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cellphone** | **String** | Sender cellphone name |  |
| **file** | **String** | Content of your sender file in base64 |  |
| **type** | **String** | Sender code type |  |
| **sender_id** | **Integer** |  | [readonly] |
| **status** | **String** | Status of the sender | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AlphanumericCellphoneSender.new(
  cellphone: Your company name,
  file: null,
  type: null,
  sender_id: 1,
  status: moderation
)
```

