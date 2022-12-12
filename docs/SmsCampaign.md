# EgoiRubyClient::SmsCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** |  |  |
| **internal_name** | **String** | SMS campaign internal name |  |
| **content** | [**CampaignSmsContent**](CampaignSmsContent.md) |  |  |
| **sender_id** | **Integer** |  | [optional] |
| **options** | [**CampaignSmsOptions**](CampaignSmsOptions.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SmsCampaign.new(
  list_id: 1,
  internal_name: Internal Title,
  content: null,
  sender_id: 1,
  options: null
)
```

