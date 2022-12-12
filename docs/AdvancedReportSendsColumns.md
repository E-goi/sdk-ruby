# EgoiRubyClient::AdvancedReportSendsColumns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_base_fields** | **Array&lt;String&gt;** | Array of base fields |  |
| **list_extra_fields** | [**Array&lt;AdvancedReportListExtraFieldsInner&gt;**](AdvancedReportListExtraFieldsInner.md) |  |  |
| **campaign_fields** | [**SendsCampaignFields**](SendsCampaignFields.md) |  |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportSendsColumns.new(
  list_base_fields: null,
  list_extra_fields: null,
  campaign_fields: null
)
```

