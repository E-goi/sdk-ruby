# EgoiRubyClient::GenerateEmailClicksByUrlReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Advanced report title |  |
| **range** | [**AdvancedReportRange**](AdvancedReportRange.md) |  |  |
| **campaigns** | [**Array&lt;AdvancedReportCampaignsObject&gt;**](AdvancedReportCampaignsObject.md) | Campaigns of the report |  |
| **columns** | [**AdvancedReportEmailClicksByUrlColumns**](AdvancedReportEmailClicksByUrlColumns.md) |  |  |
| **options** | [**AdvancedReportEmailClicksByUrlOptions**](AdvancedReportEmailClicksByUrlOptions.md) |  |  |
| **callback_url** | **String** | URL which will receive the information of the report | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::GenerateEmailClicksByUrlReport.new(
  title: Report title,
  range: null,
  campaigns: null,
  columns: null,
  options: null,
  callback_url: null
)
```

