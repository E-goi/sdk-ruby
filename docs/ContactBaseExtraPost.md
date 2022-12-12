# EgoiRubyClient::ContactBaseExtraPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | [**ContactBaseFieldsPostSchemaBase**](ContactBaseFieldsPostSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFields&gt;**](ContactExtraFields.md) | Array of the contact&#39;s extra fields | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactBaseExtraPost.new(
  base: null,
  extra: null
)
```

