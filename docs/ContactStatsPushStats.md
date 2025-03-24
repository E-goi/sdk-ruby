# EgoiRubyClient::ContactStatsPushStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent** | **Integer** | Push messages sent to the contact | [optional] |
| **delivered** | **Integer** | Push messages delivered to the contact | [optional] |
| **not_delivered** | **Integer** | Push messages that were not delivered to the contact | [optional] |
| **views** | **Integer** | Push messages that were viewed by the contact | [optional] |
| **clicks** | **Integer** | Total number of clicks made by the contact | [optional] |
| **last_view_date** | **Time** | Date of the last push message view of the contact | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactStatsPushStats.new(
  sent: 5,
  delivered: 5,
  not_delivered: 0,
  views: 4,
  clicks: 3,
  last_view_date: null
)
```

