# EgoiRubyClient::SmartSmsCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** |  |  |
| **internal_name** | **String** | Smart SMS campaign internal name |  |
| **campaign_content** | [**SmartSmsCampaignCampaignContent**](SmartSmsCampaignCampaignContent.md) |  |  |
| **page_content** | [**CampaignSmartSmsPageContent**](CampaignSmartSmsPageContent.md) |  |  |
| **sender_id** | **Integer** |  | [optional] |
| **cname_id** | **Integer** |  | [optional] |
| **options** | [**CampaignSmartSmsOptions**](CampaignSmartSmsOptions.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SmartSmsCampaign.new(
  list_id: 1,
  internal_name: Internal Name,
  campaign_content: null,
  page_content: null,
  sender_id: 1,
  cname_id: 1,
  options: null
)
```

