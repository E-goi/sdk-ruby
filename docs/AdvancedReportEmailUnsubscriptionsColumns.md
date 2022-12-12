# EgoiRubyClient::AdvancedReportEmailUnsubscriptionsColumns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_base_fields** | **Array&lt;String&gt;** | Array of base fields |  |
| **list_extra_fields** | [**Array&lt;AdvancedReportListExtraFieldsInner&gt;**](AdvancedReportListExtraFieldsInner.md) |  |  |
| **list_stats_fields** | [**EmailUnsubscriptionsListStatsFields**](EmailUnsubscriptionsListStatsFields.md) |  |  |
| **campaign_fields** | [**EmailUnsubscriptionsCampaignFields**](EmailUnsubscriptionsCampaignFields.md) |  |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportEmailUnsubscriptionsColumns.new(
  list_base_fields: null,
  list_extra_fields: null,
  list_stats_fields: null,
  campaign_fields: null
)
```

