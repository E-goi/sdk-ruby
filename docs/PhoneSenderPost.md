# EgoiRubyClient::PhoneSenderPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Sender value (country code followed by phone number, split by &#39;-&#39;) |  |
| **file** | **String** | Content of your sender file in base64 |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PhoneSenderPost.new(
  phone: 351-300404336,
  file: null
)
```

