# EgoiRubyClient::EmailEventsListStatsFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **opens** | **Boolean** | True to include opens, false otherwise |  |
| **clicks** | **Boolean** | True to include clicks, false otherwise |  |
| **complaints** | **Boolean** | True to include complaints, false otherwise |  |
| **unsubscribes** | **Boolean** | True to include unsubscriptions, false otherwise |  |
| **bounces** | **Boolean** | True to include bounces, false otherwise |  |
| **forwards** | **Boolean** | True to include forwards, false otherwise |  |
| **forwards_conversion** | **Boolean** | True to include converted forwards, false otherwise |  |
| **fb_likes** | **Boolean** | True to include facebook likes, false otherwise |  |
| **fb_shares** | **Boolean** | True to include facebook shares, false otherwise |  |
| **tw_shares** | **Boolean** | True to include twitter shares, false otherwise |  |
| **social_shares** | **Boolean** | True to include social shares, false otherwise |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailEventsListStatsFields.new(
  opens: null,
  clicks: null,
  complaints: null,
  unsubscribes: null,
  bounces: null,
  forwards: null,
  forwards_conversion: null,
  fb_likes: null,
  fb_shares: null,
  tw_shares: null,
  social_shares: null
)
```

