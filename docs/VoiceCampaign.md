# EgoiRubyClient::VoiceCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | Voice campaign internal name |  |
| **list_id** | **Integer** |  |  |
| **group_id** | **Integer** |  | [optional] |
| **content** | [**ContentVoice**](ContentVoice.md) |  |  |
| **sender_id** | **Integer** |  |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::VoiceCampaign.new(
  internal_name: null,
  list_id: 1,
  group_id: 1,
  content: null,
  sender_id: 1
)
```

