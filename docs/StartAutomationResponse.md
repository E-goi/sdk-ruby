# EgoiRubyClient::StartAutomationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **Integer** |  | [optional][readonly] |
| **action_id** | **Integer** |  | [optional][readonly] |
| **success** | **Array&lt;String&gt;** | Array of contacts where the automation was successfully started | [optional] |
| **error** | **Array&lt;String&gt;** | Array of contacts where the automation was not successfully started | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::StartAutomationResponse.new(
  automation_id: 1,
  action_id: 1,
  success: null,
  error: null
)
```

