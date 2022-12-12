# EgoiRubyClient::BasicSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** |  | [readonly] |
| **status** | **String** | Status of the sender | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::BasicSender.new(
  sender_id: 1,
  status: moderation
)
```

