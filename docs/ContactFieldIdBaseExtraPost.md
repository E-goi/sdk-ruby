# EgoiRubyClient::ContactFieldIdBaseExtraPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compare_field** | [**ContactByFieldFieldsPostSchemaCompareField**](ContactByFieldFieldsPostSchemaCompareField.md) |  | [optional] |
| **base** | [**ContactBaseWithStatusNoRemovedFieldsSchemaBase**](ContactBaseWithStatusNoRemovedFieldsSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFields&gt;**](ContactExtraFields.md) | Array of the contact&#39;s extra fields | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactFieldIdBaseExtraPost.new(
  compare_field: null,
  base: null,
  extra: null
)
```

