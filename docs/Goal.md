# EgoiRubyClient::Goal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Domain where goal exists | [optional] |
| **name** | **String** | Goal name | [optional] |
| **id** | **Float** | Goal id | [optional] |
| **config** | [**GoalInfo**](GoalInfo.md) |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Goal.new(
  domain: www.e-goi.com,
  name: Button click,
  id: 1,
  config: null
)
```

