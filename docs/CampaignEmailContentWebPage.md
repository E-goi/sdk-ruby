# EgoiRubyClient::CampaignEmailContentWebPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **url** | **String** | Campaign url |  |
| **use_page_title** | **Boolean** | True to use page title as the campaign title | [optional][default to false] |
| **plain_text** | **String** | Plain text for the campaign | [optional] |
| **snippet** | **String** | Snippet text for the campaign | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::CampaignEmailContentWebPage.new(
  type: null,
  url: null,
  use_page_title: null,
  plain_text: null,
  snippet: null
)
```

