# EgoiRubyClient::EmailReportByHourHourInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour** | **String** | 24-hour format of an hour with leading zeros | [optional] |
| **sends** | **Integer** | Total number of sent messages | [optional] |
| **opens** | **Integer** | Total number of open messages | [optional] |
| **clicks** | **Integer** | Total number of clicks in message | [optional] |
| **hard_bounces** | **Integer** | Total number of hard bounces | [optional] |
| **soft_bounces** | **Integer** | Total number of soft bounces | [optional] |
| **complaints** | **Integer** | Total number of complaints | [optional] |
| **unsubscriptions** | **Integer** | Total number of unsubscriptions | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailReportByHourHourInner.new(
  hour: 03,
  sends: 3,
  opens: 3,
  clicks: 3,
  hard_bounces: 3,
  soft_bounces: 3,
  complaints: 3,
  unsubscriptions: 3
)
```

