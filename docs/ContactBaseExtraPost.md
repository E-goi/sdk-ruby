# EgoiRubyClient::ContactBaseExtraPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | [**ContactBaseFieldsPostSchemaBase**](ContactBaseFieldsPostSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFields&gt;**](ContactExtraFields.md) | Array of the contact&#39;s extra fields | [optional] |
| **utm** | [**ContactUtmPostSchemaUtm**](ContactUtmPostSchemaUtm.md) |  | [optional] |
| **referrer** | [**ContactReferrerPostSchemaReferrer**](ContactReferrerPostSchemaReferrer.md) |  | [optional] |
| **advertising** | [**ContactAdvertisingPostSchemaAdvertising**](ContactAdvertisingPostSchemaAdvertising.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactBaseExtraPost.new(
  base: null,
  extra: null,
  utm: null,
  referrer: null,
  advertising: null
)
```

