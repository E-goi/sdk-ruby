# EgoiRubyClient::SmsCampaignPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | SMS campaign internal name | [optional] |
| **content** | [**SmsCampaignPatchRequestContent**](SmsCampaignPatchRequestContent.md) |  | [optional] |
| **sender_id** | **Integer** |  | [optional] |
| **options** | [**CampaignSmsOptions**](CampaignSmsOptions.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SmsCampaignPatchRequest.new(
  internal_name: Internal Title,
  content: null,
  sender_id: 1,
  options: null
)
```

