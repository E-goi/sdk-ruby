# EgoiRubyClient::CampaignPushScheduleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_date** | **Time** | The date and time | [optional] |
| **app_id** | **String** |  |  |
| **segments** | [**OSegmentsWithoutContactActionSend**](OSegmentsWithoutContactActionSend.md) |  |  |
| **notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CampaignPushScheduleRequest.new(
  schedule_date: null,
  app_id: null,
  segments: null,
  notify: null
)
```

