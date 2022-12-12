# EgoiRubyClient::AdvancedReportEmailEventsOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_unopens** | **Boolean** | True to include info for not opened campaigns, false otherwise |  |
| **notify** | **Array&lt;Integer&gt;** | Array of user IDs to notify | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportEmailEventsOptions.new(
  include_unopens: null,
  notify: null
)
```

