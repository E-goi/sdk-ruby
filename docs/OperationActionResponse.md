# EgoiRubyClient::OperationActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Array&lt;Integer&gt;** | Array of operation IDs referencing successful operations | [optional] |
| **error** | [**OperationActionResponseError**](OperationActionResponseError.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::OperationActionResponse.new(
  success: null,
  error: null
)
```

