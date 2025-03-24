# EgoiRubyClient::ContactStatsWebpushStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent** | **Integer** | Webpush messages sent to the contact | [optional] |
| **delivered** | **Integer** | Webpush messages delivered to the contact | [optional] |
| **clicks** | **Integer** | Total number of clicks made by the contact | [optional] |
| **bounces** | **Integer** | Bounces for the contact | [optional] |
| **last_send_date** | **Time** | Date of the last webpush message sent to the contact | [optional] |
| **last_delivery_date** | **Time** | Date of the last webpush message delivered to the contact | [optional] |
| **last_click_date** | **Time** | Date of the last webpush message clicked by the contact | [optional] |
| **last_bounce_date** | **Time** | Date of the last webpush bounce for the contact | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactStatsWebpushStats.new(
  sent: 7,
  delivered: 7,
  clicks: 2,
  bounces: 0,
  last_send_date: null,
  last_delivery_date: null,
  last_click_date: null,
  last_bounce_date: null
)
```

