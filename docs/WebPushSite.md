# EgoiRubyClient::WebPushSite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **Integer** |  | [optional][readonly] |
| **site** | **String** | Webpush site |  |
| **list_id** | **Integer** |  |  |
| **app_code** | **String** | App code | [optional][readonly] |
| **name** | **String** | Webpush name |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::WebPushSite.new(
  site_id: 1,
  site: null,
  list_id: 1,
  app_code: 7b89dfsb9a6ab6fbsfbasbd6f6,
  name: null
)
```

