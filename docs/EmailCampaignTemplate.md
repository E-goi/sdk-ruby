# EgoiRubyClient::EmailCampaignTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_data** | [**EmailCampaignTemplateAllOfSenderData**](EmailCampaignTemplateAllOfSenderData.md) |  | [optional] |
| **image** | **String** | Template image | [optional] |
| **message_html_version** | **String** | Html message | [optional] |
| **message_text_version** | **String** | Text message | [optional] |
| **reply_to_data** | [**EmailCampaignTemplateAllOfReplyToData**](EmailCampaignTemplateAllOfReplyToData.md) |  | [optional] |
| **template_id** | **Integer** |  | [optional][readonly] |
| **template_hash** | **String** |  | [optional][readonly] |
| **internal_name** | **String** | Campaign internal name | [optional] |
| **created** | **Time** |  | [optional][readonly] |
| **updated** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailCampaignTemplate.new(
  sender_data: null,
  image: ,
  message_html_version: null,
  message_text_version: null,
  reply_to_data: null,
  template_id: 1,
  template_hash: null,
  internal_name: Campaign internal name,
  created: null,
  updated: null
)
```

