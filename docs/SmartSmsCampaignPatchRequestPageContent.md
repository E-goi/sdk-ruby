# EgoiRubyClient::SmartSmsCampaignPatchRequestPageContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_url** | **String** | Smart SMS page URL | [optional] |
| **page_html** | **String** | Smart SMS page HTML | [optional] |
| **page_internal_name** | **String** | Smart SMS page name. This is only applicable to campaigns with type &#39;import&#39; or &#39;html&#39;.                             Campaigns with type &#39;redirect&#39; will ignore this parameter | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SmartSmsCampaignPatchRequestPageContent.new(
  page_url: null,
  page_html: null,
  page_internal_name: null
)
```

