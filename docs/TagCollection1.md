# EgoiRubyClient::TagCollection1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Returned sites | [optional] |
| **items** | [**Array&lt;WebPushSite&gt;**](WebPushSite.md) | Returned sites | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::TagCollection1.new(
  total_items: 1,
  items: null
)
```

