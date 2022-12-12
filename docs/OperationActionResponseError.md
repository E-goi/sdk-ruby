# EgoiRubyClient::OperationActionResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invalid_operation_action** | **Array&lt;Integer&gt;** | Array of operation IDs referencing operations where this action is invalid | [optional] |
| **operation_not_found** | **Array&lt;Integer&gt;** | Array of invalid operation IDs | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::OperationActionResponseError.new(
  invalid_operation_action: null,
  operation_not_found: null
)
```

