# EgoiRubyClient::ContactUtmPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **utm_source** | **String** | Utm source value | [optional] |
| **utm_medium** | **String** | Utm medium value | [optional] |
| **utm_campaign** | **String** | Utm campaign value | [optional] |
| **utm_content** | **String** | Utm content value | [optional] |
| **utm_term** | **String** | Utm source value | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactUtmPost.new(
  utm_source: source,
  utm_medium: medium,
  utm_campaign: campaign,
  utm_content: content,
  utm_term: term
)
```

