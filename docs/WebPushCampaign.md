# EgoiRubyClient::WebPushCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **Integer** |  |  |
| **internal_name** | **String** | Webpush campaign internal title |  |
| **content** | [**MessageWebPushPost**](MessageWebPushPost.md) |  |  |
| **actions** | [**Array&lt;WebpushActionsInner&gt;**](WebpushActionsInner.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::WebPushCampaign.new(
  site_id: 1,
  internal_name: null,
  content: null,
  actions: null
)
```

