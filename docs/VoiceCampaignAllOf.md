# EgoiRubyClient::VoiceCampaignAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | Voice campaign internal name | [optional] |
| **list_id** | **Integer** |  | [optional] |
| **group_id** | **Integer** |  | [optional] |
| **content** | [**ContentVoice**](ContentVoice.md) |  | [optional] |
| **sender_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::VoiceCampaignAllOf.new(
  internal_name: null,
  list_id: 1,
  group_id: 1,
  content: null,
  sender_id: 1
)
```

