# EgoiRubyClient::AdvancedReportSmsBouncesColumns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_base_fields** | **Array&lt;String&gt;** | Array of base fields |  |
| **list_extra_fields** | [**Array&lt;AdvancedReportListExtraFieldsInner&gt;**](AdvancedReportListExtraFieldsInner.md) |  |  |
| **list_stats_fields** | [**SmsBouncesListStatsFields**](SmsBouncesListStatsFields.md) |  |  |
| **campaign_fields** | [**SmsBouncesCampaignFields**](SmsBouncesCampaignFields.md) |  |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportSmsBouncesColumns.new(
  list_base_fields: null,
  list_extra_fields: null,
  list_stats_fields: null,
  campaign_fields: null
)
```

