# EgoiRubyClient::SmartSmsCampaignPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | SMS campaign internal name | [optional] |
| **campaign_content** | [**SmartSmsCampaignPatchRequestCampaignContent**](SmartSmsCampaignPatchRequestCampaignContent.md) |  | [optional] |
| **page_content** | [**SmartSmsCampaignPatchRequestPageContent**](SmartSmsCampaignPatchRequestPageContent.md) |  | [optional] |
| **sender_id** | **Integer** |  | [optional] |
| **cname_id** | **Integer** |  | [optional] |
| **options** | [**CampaignSmsOptions**](CampaignSmsOptions.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SmartSmsCampaignPatchRequest.new(
  internal_name: Internal Title,
  campaign_content: null,
  page_content: null,
  sender_id: 1,
  cname_id: 1,
  options: null
)
```

