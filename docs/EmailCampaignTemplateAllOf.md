# EgoiRubyClient::EmailCampaignTemplateAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_data** | [**EmailCampaignTemplateAllOfSenderData**](EmailCampaignTemplateAllOfSenderData.md) |  | [optional] |
| **image** | **String** | Template image | [optional] |
| **message_html_version** | **String** | Html message | [optional] |
| **message_text_version** | **String** | Text message | [optional] |
| **reply_to_data** | [**EmailCampaignTemplateAllOfReplyToData**](EmailCampaignTemplateAllOfReplyToData.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailCampaignTemplateAllOf.new(
  sender_data: null,
  image: ,
  message_html_version: null,
  message_text_version: null,
  reply_to_data: null
)
```

