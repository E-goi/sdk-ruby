# EgoiRubyClient::EmailCampaignPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** | Campaign internal name | [optional] |
| **subject** | **String** | Campaign subject. If no value is sent, defaults to &#39;internal_name&#39; property value | [optional] |
| **content** | [**CampaignEmailContentHtmlPatch**](CampaignEmailContentHtmlPatch.md) |  | [optional] |
| **sender_id** | **Integer** |  | [optional] |
| **reply_to** | **Integer** |  | [optional] |
| **header_footer** | [**HeaderFooter**](HeaderFooter.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailCampaignPatch.new(
  internal_name: Campaign internal name,
  subject: Campaign subject,
  content: null,
  sender_id: 1,
  reply_to: 1,
  header_footer: null
)
```

