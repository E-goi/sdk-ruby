# EgoiRubyClient::GenerateSmsEventsReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Advanced report title |  |
| **range** | [**AdvancedReportRange**](AdvancedReportRange.md) |  |  |
| **campaigns** | [**Array&lt;AdvancedReportCampaignsObject&gt;**](AdvancedReportCampaignsObject.md) | Campaigns of the report |  |
| **columns** | [**AdvancedReportSmsEventsColumns**](AdvancedReportSmsEventsColumns.md) |  |  |
| **options** | [**AdvancedReportSmsEventsOptions**](AdvancedReportSmsEventsOptions.md) |  |  |
| **callback_url** | **String** | URL which will receive the information of the report &lt;a href&#x3D;&#39;/usecases/callbacks/&#39; target&#x3D;&#39;_blank&#39;&gt;[Go to callback documentation]&lt;/a&gt; | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::GenerateSmsEventsReport.new(
  title: Report title,
  range: null,
  campaigns: null,
  columns: null,
  options: null,
  callback_url: null
)
```

