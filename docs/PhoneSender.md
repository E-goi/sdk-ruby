# EgoiRubyClient::PhoneSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Sender value (country code followed by phone number, split by &#39;-&#39;) |  |
| **file** | **String** | Content of your sender file in base64 |  |
| **sender_id** | **Integer** |  | [readonly] |
| **status** | **String** | Status of the sender | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PhoneSender.new(
  phone: 351-300404336,
  file: null,
  sender_id: 1,
  status: moderation
)
```

