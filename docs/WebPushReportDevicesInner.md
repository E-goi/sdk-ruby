# EgoiRubyClient::WebPushReportDevicesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device** | **String** | Device type | [optional] |
| **opens** | **Integer** | Total number of opened messages | [optional] |
| **sends** | **Integer** | Total number of sent messages | [optional] |
| **clicks** | **Integer** | Total number of clicked messages | [optional] |
| **bounces** | **Integer** | Total number of bounces | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::WebPushReportDevicesInner.new(
  device: desktop,
  opens: null,
  sends: 1,
  clicks: 0,
  bounces: 0
)
```

