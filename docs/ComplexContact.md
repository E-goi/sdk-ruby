# EgoiRubyClient::ComplexContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_stats** | [**ComplexContactAllOfEmailStats**](ComplexContactAllOfEmailStats.md) |  | [optional] |
| **sms_stats** | [**ComplexContactAllOfSmsStats**](ComplexContactAllOfSmsStats.md) |  | [optional] |
| **push_stats** | [**ComplexContactAllOfPushStats**](ComplexContactAllOfPushStats.md) |  | [optional] |
| **webpush_stats** | [**ComplexContactAllOfWebpushStats**](ComplexContactAllOfWebpushStats.md) |  | [optional] |
| **voice_stats** | [**ComplexContactAllOfVoiceStats**](ComplexContactAllOfVoiceStats.md) |  | [optional] |
| **base** | [**ContactBaseFieldsSchemaBase**](ContactBaseFieldsSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFields&gt;**](ContactExtraFields.md) | Array of the contact&#39;s extra fields | [optional] |
| **tags** | **Array&lt;Integer&gt;** | Array of tags for this contact | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ComplexContact.new(
  email_stats: null,
  sms_stats: null,
  push_stats: null,
  webpush_stats: null,
  voice_stats: null,
  base: null,
  extra: null,
  tags: [1,2]
)
```

