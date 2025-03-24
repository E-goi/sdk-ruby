# EgoiRubyClient::ContactBaseExtraBulk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | [**ContactBaseFieldsBulkSchemaBase**](ContactBaseFieldsBulkSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFieldsBulk&gt;**](ContactExtraFieldsBulk.md) | Array of the contact&#39;s extra fields | [optional] |
| **utm** | [**ContactUtmPostSchemaUtm**](ContactUtmPostSchemaUtm.md) |  | [optional] |
| **referrer** | [**ContactReferrerPostSchemaReferrer**](ContactReferrerPostSchemaReferrer.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactBaseExtraBulk.new(
  base: null,
  extra: null,
  utm: null,
  referrer: null
)
```

