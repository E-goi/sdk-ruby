# EgoiRubyClient::GoalTimeInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Goal type | [optional] |
| **minutes** | **Float** | Goal trigger time in minutes | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::GoalTimeInfo.new(
  type: null,
  minutes: 10
)
```

