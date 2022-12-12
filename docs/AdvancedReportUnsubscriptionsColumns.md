# EgoiRubyClient::AdvancedReportUnsubscriptionsColumns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_base_fields** | **Array&lt;String&gt;** | Array of base fields |  |
| **list_extra_fields** | [**Array&lt;AdvancedReportListExtraFieldsInner&gt;**](AdvancedReportListExtraFieldsInner.md) |  |  |
| **list_stats_fields** | [**UnsubscriptionsListStatsFields**](UnsubscriptionsListStatsFields.md) |  |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportUnsubscriptionsColumns.new(
  list_base_fields: null,
  list_extra_fields: null,
  list_stats_fields: null
)
```

