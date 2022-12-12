# EgoiRubyClient::AdvancedReportEmailBouncesOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_unopens** | **Boolean** | True to include info for not opened campaigns, false otherwise |  |
| **notify** | **Array&lt;Integer&gt;** | Array of user IDs to notify | [optional] |
| **grouping** | **String** | Field to group data | [optional][default to &#39;by_campaign&#39;] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportEmailBouncesOptions.new(
  include_unopens: null,
  notify: null,
  grouping: null
)
```

