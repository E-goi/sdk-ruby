# EgoiRubyClient::AdvancedReportModels

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_id** | **Integer** |  | [optional][readonly] |
| **title** | **String** | Advanced report model title | [optional] |
| **created** | **Time** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportModels.new(
  model_id: 1,
  title: Report title,
  created: null
)
```

