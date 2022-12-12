# EgoiRubyClient::ContactBaseStatusExtra

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | [**ContactBaseWithStatusFieldsSchemaBase**](ContactBaseWithStatusFieldsSchemaBase.md) |  | [optional] |
| **extra** | [**Array&lt;ContactExtraFields&gt;**](ContactExtraFields.md) | Array of the contact&#39;s extra fields | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactBaseStatusExtra.new(
  base: null,
  extra: null
)
```

