# EgoiRubyClient::CampaignSmsScheduleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_date** | **Time** | The date and time | [optional] |
| **list_id** | **Integer** |  |  |
| **destination_field** | **String** | SMS campaign destination field. Must be &#39;cellphone&#39; or the other field ID of type                                 cellphone |  |
| **segments** | [**SmsSegmentsActionSend**](SmsSegmentsActionSend.md) |  |  |
| **notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CampaignSmsScheduleRequest.new(
  schedule_date: null,
  list_id: 1,
  destination_field: cellphone,
  segments: null,
  notify: null
)
```

