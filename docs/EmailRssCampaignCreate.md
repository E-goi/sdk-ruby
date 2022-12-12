# EgoiRubyClient::EmailRssCampaignCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** |  |  |
| **internal_name** | **String** | Campaign internal name |  |
| **subject** | **String** | Campaign subject. If no value is sent, defaults to &#39;internal_name&#39; property value | [optional] |
| **content** | [**CampaignEmailRssContent**](CampaignEmailRssContent.md) |  |  |
| **sender_id** | **Integer** |  |  |
| **reply_to** | **Integer** |  | [optional] |
| **header_footer** | [**HeaderFooter**](HeaderFooter.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailRssCampaignCreate.new(
  list_id: 1,
  internal_name: Campaign internal name,
  subject: Campaign subject,
  content: null,
  sender_id: 1,
  reply_to: 1,
  header_footer: null
)
```

