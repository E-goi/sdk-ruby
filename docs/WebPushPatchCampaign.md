# EgoiRubyClient::WebPushPatchCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | Webpush campaign internal title | [optional] |
| **content** | [**MessageWebPush**](MessageWebPush.md) |  | [optional] |
| **actions** | [**Array&lt;WebpushActionsInner&gt;**](WebpushActionsInner.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::WebPushPatchCampaign.new(
  internal_name: null,
  content: null,
  actions: null
)
```

