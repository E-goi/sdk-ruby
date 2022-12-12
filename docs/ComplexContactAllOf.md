# EgoiRubyClient::ComplexContactAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_stats** | [**ComplexContactAllOfEmailStats**](ComplexContactAllOfEmailStats.md) |  | [optional] |
| **sms_stats** | [**ComplexContactAllOfSmsStats**](ComplexContactAllOfSmsStats.md) |  | [optional] |
| **push_stats** | [**ComplexContactAllOfPushStats**](ComplexContactAllOfPushStats.md) |  | [optional] |
| **webpush_stats** | [**ComplexContactAllOfWebpushStats**](ComplexContactAllOfWebpushStats.md) |  | [optional] |
| **voice_stats** | [**ComplexContactAllOfVoiceStats**](ComplexContactAllOfVoiceStats.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ComplexContactAllOf.new(
  email_stats: null,
  sms_stats: null,
  push_stats: null,
  webpush_stats: null,
  voice_stats: null
)
```

