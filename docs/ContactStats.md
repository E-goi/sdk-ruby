# EgoiRubyClient::ContactStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_stats** | [**ContactStatsEmailStats**](ContactStatsEmailStats.md) |  | [optional] |
| **sms_stats** | [**ContactStatsSmsStats**](ContactStatsSmsStats.md) |  | [optional] |
| **push_stats** | [**ContactStatsPushStats**](ContactStatsPushStats.md) |  | [optional] |
| **webpush_stats** | [**ContactStatsWebpushStats**](ContactStatsWebpushStats.md) |  | [optional] |
| **voice_stats** | [**ContactStatsVoiceStats**](ContactStatsVoiceStats.md) |  | [optional] |
| **traffic_stats** | [**ContactStatsTrafficStats**](ContactStatsTrafficStats.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactStats.new(
  email_stats: null,
  sms_stats: null,
  push_stats: null,
  webpush_stats: null,
  voice_stats: null,
  traffic_stats: null
)
```

