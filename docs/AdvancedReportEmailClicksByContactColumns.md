# EgoiRubyClient::AdvancedReportEmailClicksByContactColumns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_base_fields** | **Array&lt;String&gt;** | Array of base fields |  |
| **list_extra_fields** | [**Array&lt;AdvancedReportListExtraFieldsInner&gt;**](AdvancedReportListExtraFieldsInner.md) |  |  |
| **list_stats_fields** | [**EmailClicksByContactListStatsFields**](EmailClicksByContactListStatsFields.md) |  |  |
| **campaign_fields** | [**EmailClicksByContactCampaignFields**](EmailClicksByContactCampaignFields.md) |  |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportEmailClicksByContactColumns.new(
  list_base_fields: null,
  list_extra_fields: null,
  list_stats_fields: null,
  campaign_fields: null
)
```

