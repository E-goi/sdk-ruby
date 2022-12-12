# EgoiRubyClient::AlphanumericCellphoneSenderPostAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cellphone** | **String** | Sender cellphone name | [optional] |
| **file** | **String** | Content of your sender file in base64 | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AlphanumericCellphoneSenderPostAllOf.new(
  cellphone: Your company name,
  file: null
)
```

