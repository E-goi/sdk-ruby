# EgoiRubyClient::WebPushRssCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **Integer** |  |  |
| **internal_name** | **String** | Webpush campaign internal title |  |
| **content** | [**MessageWebPushRss**](MessageWebPushRss.md) |  |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::WebPushRssCampaign.new(
  site_id: 1,
  internal_name: null,
  content: null
)
```

