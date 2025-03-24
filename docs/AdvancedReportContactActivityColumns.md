# EgoiRubyClient::AdvancedReportContactActivityColumns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_base_fields** | **Array&lt;String&gt;** | Array of base fields |  |
| **list_extra_fields** | [**Array&lt;AdvancedReportListExtraFieldsInner&gt;**](AdvancedReportListExtraFieldsInner.md) |  |  |
| **contact_activities** | [**ContactActivityActivitiesFields**](ContactActivityActivitiesFields.md) |  |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportContactActivityColumns.new(
  list_base_fields: null,
  list_extra_fields: null,
  contact_activities: null
)
```

