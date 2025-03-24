# EgoiRubyClient::ComplexContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | [**ContactBaseFieldsSchemaBase**](ContactBaseFieldsSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFields&gt;**](ContactExtraFields.md) | Array of the contact&#39;s extra fields | [optional] |
| **tags** | **Array&lt;Integer&gt;** | Array of tags for this contact | [optional][readonly] |
| **email_stats** | [**ContactStatsEmailStats**](ContactStatsEmailStats.md) |  | [optional] |
| **sms_stats** | [**ContactStatsSmsStats**](ContactStatsSmsStats.md) |  | [optional] |
| **push_stats** | [**ContactStatsPushStats**](ContactStatsPushStats.md) |  | [optional] |
| **webpush_stats** | [**ContactStatsWebpushStats**](ContactStatsWebpushStats.md) |  | [optional] |
| **voice_stats** | [**ContactStatsVoiceStats**](ContactStatsVoiceStats.md) |  | [optional] |
| **traffic_stats** | [**ContactStatsTrafficStats**](ContactStatsTrafficStats.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ComplexContact.new(
  base: null,
  extra: null,
  tags: [1,2],
  email_stats: null,
  sms_stats: null,
  push_stats: null,
  webpush_stats: null,
  voice_stats: null,
  traffic_stats: null
)
```

