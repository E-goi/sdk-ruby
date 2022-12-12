# EgoiRubyClient::PatchRequestField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the field | [optional] |
| **unique** | **Boolean** | True if the field is unique, false otherwise | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::PatchRequestField.new(
  name: Field name,
  unique: null
)
```

