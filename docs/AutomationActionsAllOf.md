# EgoiRubyClient::AutomationActionsAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **Integer** |  | [optional][readonly] |
| **title** | **String** | Action title | [optional] |
| **action** | **String** | Type od action | [optional] |
| **parent_id** | **Integer** |  | [optional][readonly] |
| **created_by** | **Integer** |  | [optional][readonly] |
| **created** | **Time** |  | [optional][readonly] |
| **updated** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AutomationActionsAllOf.new(
  action_id: 1,
  title: Example Action,
  action: addTag,
  parent_id: 1,
  created_by: 1,
  created: null,
  updated: null
)
```

