# EgoiRubyClient::BulkActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Array&lt;Integer&gt;** | Array of succeeded operations | [optional] |
| **error** | **Array&lt;Integer&gt;** | Array of unsuccessful operations | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::BulkActionResponse.new(
  success: null,
  error: null
)
```

