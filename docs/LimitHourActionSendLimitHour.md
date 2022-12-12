# EgoiRubyClient::LimitHourActionSendLimitHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour_start** | **String** | Hour start limit | [optional] |
| **hour_end** | **String** | Hour end limit | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::LimitHourActionSendLimitHour.new(
  hour_start: 13:00,
  hour_end: 15:00
)
```

