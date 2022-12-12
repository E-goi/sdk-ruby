# EgoiRubyClient::AbstractCellphoneSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Sender code type |  |
| **sender_id** | **Integer** |  | [readonly] |
| **status** | **String** | Status of the sender | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AbstractCellphoneSender.new(
  type: null,
  sender_id: 1,
  status: moderation
)
```

