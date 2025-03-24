# EgoiRubyClient::ContactByFieldFieldsPostSchemaCompareField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | Field Id from wich you wish to identify the contact (must be set as unique in list) | [optional] |
| **value** | **String** | Value for identify the contact | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactByFieldFieldsPostSchemaCompareField.new(
  field_id: email,
  value: example@e-goi.com
)
```

