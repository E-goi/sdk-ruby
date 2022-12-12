# EgoiRubyClient::GoalAutommaticInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Goal type | [optional] |
| **rule** | **String** | Goal rule | [optional] |
| **condition** | **String** | Goal condition | [optional] |
| **pattern** | **String** | Goal pattern | [optional] |
| **case_sensitive** | **Boolean** | Goal pattern case sensitive | [optional] |
| **multiple_conversion** | **Boolean** | Goal is multiple conversion | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::GoalAutommaticInfo.new(
  type: null,
  rule: null,
  condition: null,
  pattern: checkout/confirmation,
  case_sensitive: false,
  multiple_conversion: true
)
```

