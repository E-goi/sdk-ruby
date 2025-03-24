# EgoiRubyClient::ContactStatsEmailStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent** | **Integer** | Emails sent to the contact | [optional] |
| **opens** | **Integer** | Emails opened by the contact | [optional] |
| **clicks** | **Integer** | Total number of clicks made by the contact | [optional] |
| **soft_bounces** | **Integer** | Soft bounces for the contact | [optional] |
| **hard_bounces** | **Integer** | Hard bounces for the contact | [optional] |
| **forwards** | **Integer** | Emails forwarded by the contact | [optional] |
| **conversions** | **Integer** | Total of conversions | [optional] |
| **social_actions** | **Integer** | Total of social actions for the contact | [optional] |
| **last_send_date** | **Time** | Date of the last email sent to the contact | [optional] |
| **last_open_date** | **Time** | Date of the last email open of the contact | [optional] |
| **last_click_date** | **Time** | Date of the last email click of the contact | [optional] |
| **last_open_country** | **String** | Country where the last email for that contact was opened | [optional] |
| **last_open_region** | **String** | Region where the last email for that contact was opened | [optional] |
| **last_open_city** | **String** | City where the last email for that contact was opened | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactStatsEmailStats.new(
  sent: 20,
  opens: 2,
  clicks: 4,
  soft_bounces: 5,
  hard_bounces: 5,
  forwards: 2,
  conversions: 1,
  social_actions: 1,
  last_send_date: null,
  last_open_date: null,
  last_click_date: null,
  last_open_country: Portugal,
  last_open_region: Porto,
  last_open_city: Matosinhos
)
```

