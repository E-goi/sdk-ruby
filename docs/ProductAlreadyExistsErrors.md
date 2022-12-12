# EgoiRubyClient::ProductAlreadyExistsErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_already_exists** | **String** | Occurs when the provided product already exists in the catalog | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ProductAlreadyExistsErrors.new(
  product_already_exists: null
)
```

