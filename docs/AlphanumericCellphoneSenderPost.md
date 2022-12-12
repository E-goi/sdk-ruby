# EgoiRubyClient::AlphanumericCellphoneSenderPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Sender code type |  |
| **cellphone** | **String** | Sender cellphone name |  |
| **file** | **String** | Content of your sender file in base64 |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AlphanumericCellphoneSenderPost.new(
  type: null,
  cellphone: Your company name,
  file: null
)
```

