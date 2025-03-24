# EgoiRubyClient::ContactUtmReferrerAdvertisingPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **utm** | [**ContactUtmPostSchemaUtm**](ContactUtmPostSchemaUtm.md) |  | [optional] |
| **referrer** | [**ContactReferrerPostSchemaReferrer**](ContactReferrerPostSchemaReferrer.md) |  | [optional] |
| **advertising** | [**ContactAdvertisingPostSchemaAdvertising**](ContactAdvertisingPostSchemaAdvertising.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactUtmReferrerAdvertisingPost.new(
  utm: null,
  referrer: null,
  advertising: null
)
```

