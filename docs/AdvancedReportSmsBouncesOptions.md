# EgoiRubyClient::AdvancedReportSmsBouncesOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notify** | **Array&lt;Integer&gt;** | Array of user IDs to notify | [optional] |
| **grouping** | **String** | Field to group data | [optional][default to &#39;by_campaign&#39;] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportSmsBouncesOptions.new(
  notify: null,
  grouping: null
)
```

