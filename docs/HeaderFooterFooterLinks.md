# EgoiRubyClient::HeaderFooterFooterLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forward** | **Boolean** | Use view forward footer link | [optional][default to false] |
| **view_web** | **Boolean** | Use view view in web footer link | [optional][default to false] |
| **unsubscribe** | **Boolean** | Use view unsubscribe footer link | [optional][default to false] |
| **edit** | **Boolean** | Use view edit footer link | [optional][default to false] |
| **social_share** | **Boolean** | Use view social share footer link | [optional][default to false] |
| **facebook_share** | **Boolean** | Use view facebook share footer link | [optional][default to false] |
| **twitter_share** | **Boolean** | Use view twitter share footer link | [optional][default to false] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::HeaderFooterFooterLinks.new(
  forward: null,
  view_web: null,
  unsubscribe: null,
  edit: null,
  social_share: null,
  facebook_share: null,
  twitter_share: null
)
```

