# EgoiRubyClient::EmailSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Sender name |  |
| **email** | **String** | Sender email |  |
| **sender_id** | **Integer** |  | [readonly] |
| **status** | **String** | Status of the sender | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailSender.new(
  name: E-goi,
  email: example@e-goi.com,
  sender_id: 1,
  status: moderation
)
```

