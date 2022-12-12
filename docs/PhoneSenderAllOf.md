# EgoiRubyClient::PhoneSenderAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Sender value (country code followed by phone number, split by &#39;-&#39;) | [optional] |
| **file** | **String** | Content of your sender file in base64 | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PhoneSenderAllOf.new(
  phone: 351-300404336,
  file: null
)
```

