# EgoiRubyClient::CampaignEmailContentTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **template_id** | **Integer** | ID of the template for this campaign (Email builder templates are not allowed) |  |
| **plain_text** | **String** | Plain text for the campaign | [optional] |
| **snippet** | **String** | Snippet text for the campaign | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CampaignEmailContentTemplate.new(
  type: null,
  template_id: null,
  plain_text: null,
  snippet: null
)
```

