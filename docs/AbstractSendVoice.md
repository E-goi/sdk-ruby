# EgoiRubyClient::AbstractSendVoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** |  |  |
| **destination_field** | **String** | Destination field of this campaign |  |
| **unique_contacts_only** | **Boolean** | True to send the campaign only to unique contacts | [optional][default to false] |
| **segments** | [**OSegmentsActionSend**](OSegmentsActionSend.md) |  |  |
| **notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] |
| **limit_contacts** | [**OLimitContactsActionSend**](OLimitContactsActionSend.md) |  | [optional] |
| **limit_hour** | [**LimitHourActionSendLimitHour**](LimitHourActionSendLimitHour.md) |  | [optional] |
| **limit_speed** | **Integer** | Speed limit to send the campaign | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AbstractSendVoice.new(
  list_id: 1,
  destination_field: null,
  unique_contacts_only: null,
  segments: null,
  notify: null,
  limit_contacts: null,
  limit_hour: null,
  limit_speed: null
)
```

