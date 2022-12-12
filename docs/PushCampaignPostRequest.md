# EgoiRubyClient::PushCampaignPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **title** | **String** | Push campaign subject |  |
| **content** | [**CampaignPushContent**](CampaignPushContent.md) |  |  |
| **actions** | [**PushCampaignPostRequestActions**](PushCampaignPostRequestActions.md) |  | [optional] |
| **geo_options** | [**PushCampaignPostRequestGeoOptions**](PushCampaignPostRequestGeoOptions.md) |  | [optional] |
| **notification_options** | [**PushCampaignPostRequestNotificationOptions**](PushCampaignPostRequestNotificationOptions.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PushCampaignPostRequest.new(
  app_id: null,
  title: null,
  content: null,
  actions: null,
  geo_options: null,
  notification_options: null
)
```

