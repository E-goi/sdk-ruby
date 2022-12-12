# EgoiRubyClient::GenerateSmsBouncesReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Advanced report title |  |
| **range** | [**AdvancedReportRange**](AdvancedReportRange.md) |  |  |
| **campaigns** | [**Array&lt;AdvancedReportCampaignsObject&gt;**](AdvancedReportCampaignsObject.md) | Campaigns of the report |  |
| **columns** | [**AdvancedReportSmsBouncesColumns**](AdvancedReportSmsBouncesColumns.md) |  |  |
| **options** | [**AdvancedReportSmsBouncesOptions**](AdvancedReportSmsBouncesOptions.md) |  |  |
| **callback_url** | **String** | URL which will receive the information of the report | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::GenerateSmsBouncesReport.new(
  title: Report title,
  range: null,
  campaigns: null,
  columns: null,
  options: null,
  callback_url: null
)
```

