# EgoiRubyClient::ContactAdvertisingPostSchemaAdvertising

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gclid** | **String** | Identifier that Google uses in Google Ads | [optional] |
| **msclkid** | **String** | Identifier that Microsoft uses in Microsoft Ads | [optional] |
| **fbclid** | **String** | Identifier that Facebook uses in Facebook Ads | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactAdvertisingPostSchemaAdvertising.new(
  gclid: google,
  msclkid: microsoft,
  fbclid: facebook
)
```

