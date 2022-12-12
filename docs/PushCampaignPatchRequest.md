# EgoiRubyClient::PushCampaignPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_hash** | **String** |  | [optional][readonly] |
| **title** | **String** | Push campaign subject | [optional] |
| **content** | [**PushCampaignPatchRequestContent**](PushCampaignPatchRequestContent.md) |  | [optional] |
| **actions** | [**PushCampaignPostRequestActions**](PushCampaignPostRequestActions.md) |  | [optional] |
| **geo_options** | [**PushCampaignPatchRequestGeoOptions**](PushCampaignPatchRequestGeoOptions.md) |  | [optional] |
| **notification_options** | [**PushCampaignPostRequestNotificationOptions**](PushCampaignPostRequestNotificationOptions.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PushCampaignPatchRequest.new(
  campaign_hash: null,
  title: null,
  content: null,
  actions: null,
  geo_options: null,
  notification_options: null
)
```

