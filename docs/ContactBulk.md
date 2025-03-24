# EgoiRubyClient::ContactBulk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | [**ContactBaseFieldsBulkSchemaBase**](ContactBaseFieldsBulkSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFieldsBulk&gt;**](ContactExtraFieldsBulk.md) | Array of the contact&#39;s extra fields | [optional] |
| **utm** | [**ContactUtmPostSchemaUtm**](ContactUtmPostSchemaUtm.md) |  | [optional] |
| **referrer** | [**ContactReferrerPostSchemaReferrer**](ContactReferrerPostSchemaReferrer.md) |  | [optional] |
| **tags** | **Array&lt;Integer&gt;** | Array of tags for this contact | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactBulk.new(
  base: null,
  extra: null,
  utm: null,
  referrer: null,
  tags: [1,2]
)
```

