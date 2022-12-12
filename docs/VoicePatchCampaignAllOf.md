# EgoiRubyClient::VoicePatchCampaignAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | Voice campaign internal name | [optional] |
| **group_id** | **Integer** |  | [optional] |
| **message** | [**ContentVoicePatch**](ContentVoicePatch.md) |  | [optional] |
| **sender_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::VoicePatchCampaignAllOf.new(
  internal_name: null,
  group_id: 1,
  message: null,
  sender_id: 1
)
```

