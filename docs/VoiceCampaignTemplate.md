# EgoiRubyClient::VoiceCampaignTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | Voice template message file | [optional] |
| **options** | **Array&lt;Object&gt;** | Extra options | [optional] |
| **message** | **String** | Message | [optional] |
| **sender** | **String** | Sender number | [optional] |
| **message_type** | **String** | Message type | [optional] |
| **template_id** | **Integer** |  | [optional][readonly] |
| **template_hash** | **String** |  | [optional][readonly] |
| **internal_name** | **String** | Campaign internal name | [optional] |
| **created** | **Time** |  | [optional][readonly] |
| **updated** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::VoiceCampaignTemplate.new(
  file: ,
  options: null,
  message: null,
  sender: null,
  message_type: normal,
  template_id: 1,
  template_hash: null,
  internal_name: Campaign internal name,
  created: null,
  updated: null
)
```

