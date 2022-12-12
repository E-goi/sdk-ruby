# EgoiRubyClient::ComplexField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Field type | [optional][readonly] |
| **options** | [**Array&lt;FieldOption&gt;**](FieldOption.md) | Lists of options (only for fields of type &#39;options&#39;) | [optional][readonly] |
| **field_id** | **String** | Field ID | [optional][readonly] |
| **name** | **String** | Name of the field |  |
| **format** | **String** | Field format |  |
| **unique** | **Boolean** | True if the field is unique, false otherwise | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ComplexField.new(
  type: null,
  options: null,
  field_id: null,
  name: null,
  format: null,
  unique: null
)
```

