# EgoiRubyClient::AdvancedReportEmailClicksByUrlColumns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_base_fields** | **Array&lt;String&gt;** | Array of base fields |  |
| **list_extra_fields** | [**Array&lt;AdvancedReportListExtraFieldsInner&gt;**](AdvancedReportListExtraFieldsInner.md) |  |  |
| **list_stats_fields** | [**EmailClicksByUrlListStatsFields**](EmailClicksByUrlListStatsFields.md) |  |  |
| **campaign_fields** | [**EmailClicksByUrlCampaignFields**](EmailClicksByUrlCampaignFields.md) |  |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportEmailClicksByUrlColumns.new(
  list_base_fields: null,
  list_extra_fields: null,
  list_stats_fields: null,
  campaign_fields: null
)
```

