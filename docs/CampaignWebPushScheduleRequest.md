# EgoiRubyClient::CampaignWebPushScheduleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_date** | **Time** | The date and time | [optional] |
| **site_id** | **Integer** |  |  |
| **segments** | [**OSegmentsWithoutContactActionSend**](OSegmentsWithoutContactActionSend.md) |  |  |
| **notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CampaignWebPushScheduleRequest.new(
  schedule_date: null,
  site_id: 1,
  segments: null,
  notify: null
)
```

