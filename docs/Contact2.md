# EgoiRubyClient::Contact2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | [**ContactBaseFieldsSchemaBase**](ContactBaseFieldsSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFields&gt;**](ContactExtraFields.md) | Array of the contact&#39;s extra fields | [optional] |
| **tags** | **Array&lt;Integer&gt;** | Array of tags for this contact | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Contact2.new(
  base: null,
  extra: null,
  tags: [1,2]
)
```

