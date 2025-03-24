# EgoiRubyClient::PushReportOperatingSystemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operating_systems** | **String** | Device type | [optional] |
| **sends** | **Integer** | Total number of sent messages | [optional] |
| **opens** | **Integer** | Total number of opened messages | [optional] |
| **delivered** | **Integer** | Total number of delivered messages | [optional] |
| **received** | **Integer** | Total number of received messages | [optional] |
| **bounces** | **Integer** | Total number of bounces | [optional] |
| **error** | **Integer** | Total number of error messages | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PushReportOperatingSystemsInner.new(
  operating_systems: desktop,
  sends: 1,
  opens: 1,
  delivered: 1,
  received: 1,
  bounces: 0,
  error: 0
)
```

